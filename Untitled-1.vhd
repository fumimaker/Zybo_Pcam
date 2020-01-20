-------------------------------------------------------------------------------
--
-- File: AXI_BayerToRGB.vhd
-- Author: Ioan Catuna
-- Original Project: AXI Bayer to RGB Image Conversion
-- Date: 15 December 2017
--
-------------------------------------------------------------------------------
-- MIT License

-- Copyright (c) 2017 Digilent

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
--
-------------------------------------------------------------------------------
--
-- Purpose:
--   This component performs image conversion from Bayer to RGB ("Demosaic"),
-- based on a 2x2 Bayer pixel matrix.
--   The component receives 4 pixels at a time, through its AXI Stream Slave
-- interface. It outputs one pixel at a time, on the AXI Stream Master interface.
--   The component is designed as a pipeline, so once its input-to-output latency
-- is covered, it will give out pixels every clock cycle, as long as it receives
-- one pixel at its input at least every 4 clock cycles.
--   If the downstream AXI component backs off, this component will also stop
-- receiving and processing new pixels, until the downstream AXI component is
-- ready to receive data again.
--   If the upstream AXI component stops sending data, this component will also
-- stop sending new data downstream, until it receives new data.
--
--   Component specifications:
--     Input sample format: Bayer (single color)
--     Input sample size: 10 bits
--     Input sample count: 4 at a time
--     Output sample format: RGB
--     Output sample size: 32 bits (10 bits per color) + 2 unused bits
--     Output sample count: 1 at a time
--     Maximum resolution: 2048 x <any value> pixels;
--     Input-to-output latency: 4 StreamClk cycles.
--  
-------------------------------------------------------------------------------

-- 目的：
-- このコンポーネントは、2x2 Bayerピクセルマトリックスに基づいて、BayerからRGB（「デモザイク」）
-- への画像変換を実行します。コンポーネントは、AXI Stream Slaveインターフェイスを介して一度に
-- 4ピクセルを受信します。 AXI Stream Masterインターフェイスに一度に1ピクセルを出力します。
-- コンポーネントはパイプラインとして設計されているため、入力から出力までのレイテンシがカバーされると、
-- 少なくとも4クロックサイクルごとに入力で1ピクセルを受信する限り、クロックサイクルごとにピクセルが
-- 割り当てられます。ダウンストリームAXIコンポーネントがオフに戻ると、このコンポーネントは、
-- ダウンストリームAXIコンポーネントがデータを再度受信する準備ができるまで、新しいピクセルの受信と処理を停止します。
-- アップストリームAXIコンポーネントがデータの送信を停止すると、このコンポーネントは、新しいデータを受信するまで、
-- 新しいデータのダウンストリーム送信も停止します。
-
-- コンポーネントの仕様：
-- 入力サンプル形式：Bayer（単色）
-- 入力サンプルサイズ：10ビット
-- 入力サンプル数：一度に4
-- 出力サンプル形式：RGB
-- 出力サンプルサイズ：32ビット（10ビット/色）+ 2未使用ビット
-- 出力サンプル数：一度に1
-- 最大解像度：2048 x <任意の値>ピクセル;
-- 入力から出力までのレイテンシ：4 StreamClkサイクル。

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity AXI_BayerToRGB is
generic (
  kAXI_InputDataWidth : integer := 40;
  kBayerWidth : integer := 10;
  kAXI_OutputDataWidth : integer := 32;
  kMaxSamplesPerClock : integer := 4
);
port (
  StreamClk : in  STD_LOGIC;
  sStreamReset_n : in  STD_LOGIC;
  s_axis_video_tready : out STD_LOGIC;
  s_axis_video_tdata : in  STD_LOGIC_VECTOR(kAXI_InputDataWidth-1 downto 0);
  s_axis_video_tvalid : in  STD_LOGIC;
  s_axis_video_tuser : in  STD_LOGIC;
  s_axis_video_tlast : in  STD_LOGIC;

  m_axis_video_tready : in  STD_LOGIC;
  m_axis_video_tdata : out STD_LOGIC_VECTOR(kAXI_OutputDataWidth-1 downto 0);
  m_axis_video_tvalid : out STD_LOGIC;
  m_axis_video_tuser : out STD_LOGIC;
  m_axis_video_tlast : out STD_LOGIC
);
end AXI_BayerToRGB;

architecture rtl of AXI_BayerToRGB is

  type AXI_Strobes_t is record
    User: STD_LOGIC;
    Last: STD_LOGIC;
    FirstLine: STD_LOGIC;
    FirstColumn: STD_LOGIC;
  end record AXI_Strobes_t;
  type StrobesShiftReg_t is array (3 downto 0) of AXI_Strobes_t;
  signal sStrobesShiftReg: StrobesShiftReg_t;

  type BayerPixel_t is array (3 downto 0) of unsigned(kBayerWidth downto 0);
  signal sPixel: BayerPixel_t;

  signal sCntColumns: UNSIGNED(10 downto 0) := (others => '0');
  signal sCntLines: UNSIGNED(10 downto 0) := (others => '0');
  signal sCntRemPixels: unsigned(1 downto 0);
  signal sOtherPixelsData:
    STD_LOGIC_VECTOR((kBayerWidth*(kMaxSamplesPerClock-1))-1 downto 0);
  signal sLineBufferWrite: STD_LOGIC;
  signal sLineBufferWriteAddr: STD_LOGIC_VECTOR(10 downto 0);
  signal sLineBufferReadAddr: STD_LOGIC_VECTOR(10 downto 0);
  signal sLineBufferCrntAddr: UNSIGNED(10 downto 0);
  signal sLineBufferWriteData: STD_LOGIC_VECTOR( 9 downto 0);
  signal sLineBufferReadData, sLineBufferReadDataBuf: STD_LOGIC_VECTOR( 9 downto 0);
  signal sLineBufferWriteDataDly: STD_LOGIC_VECTOR(kBayerWidth-1 downto 0);
  signal sCrntPositionIndicator: STD_LOGIC_VECTOR(1 downto 0);
  signal sCrntPositionIndicatorDly1: STD_LOGIC_VECTOR(1 downto 0);
  signal sCrntPositionIndicatorDly2: STD_LOGIC_VECTOR(1 downto 0);
  signal sCrntPositionIndicatorDly3: STD_LOGIC_VECTOR(1 downto 0);
  signal sAXI_SlaveLastAsserted: STD_LOGIC;
  signal sAXIMasterBlue: unsigned(kBayerWidth-1 downto 0);
  signal sAXIMasterGreen: unsigned(kBayerWidth downto 0);
  signal sAXIMasterRed: unsigned(kBayerWidth-1 downto 0);
  signal sLineBufferRead: STD_LOGIC;

  signal sDataIsAvailableAndRequested: STD_LOGIC;
  signal sCoverInitialLatency: STD_LOGIC;

begin

-- Until we cover the initial component latency (i.e. the amount of time needed until the
-- first data we received arrives (processed) at the output of our component), we will
-- prevent erroneous AXI stream Valid assertions on the output.

-- 最初のデータが届くまでAXI出力しないようにする。
CoverInitialLatency: process(StreamClk)
begin
  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      sCoverInitialLatency <= '0';
    elsif sStrobesShiftReg(1).User = '1' then
      sCoverInitialLatency <= '1';
    end if;
  end if;
end process CoverInitialLatency;

sLineBufferWriteAddr <= std_logic_vector(sLineBufferCrntAddr);
sLineBufferReadAddr <= std_logic_vector(sLineBufferCrntAddr);

-- This RAM component will store at all times the previous line we received via AXI.
-- AXIで読み取ったひとつ前のデータをRAMに格納する。

LineBufferInst: entity work.LineBuffer
generic map(kLineBufferWidth => 2048)
port map(
  PixelClk => StreamClk,
  pWriteEnable => sLineBufferWrite,
  pWriteAddr  => sLineBufferWriteAddr,
  pWriteData => sLineBufferWriteData,
  pReadEnable => sLineBufferRead,
  pReadAddr  => sLineBufferReadAddr,
  pReadData => sLineBufferReadData
);

s_axis_video_tready <= '1' when (m_axis_video_tready = '1') and (sCntRemPixels = 0) else
                       '0';

-- This process will put data into the LineBuffer and assert some additional signals which
-- are needed downstream.
-- このプロセスはラインバッファーにデータを入れて下流に必要な追加の信号を付与する。

PutInputDataInRAM: process(StreamClk)
begin

  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      sStrobesShiftReg(0).Last <= '0';
      sStrobesShiftReg(0).FirstColumn <= '0';
      sCntRemPixels <= (others => '0');
      sAXI_SlaveLastAsserted <= '0';
      sLineBufferWrite <= '0';
      sLineBufferCrntAddr <= (others => '0');
      sCntColumns <= (others => '0');
      sLineBufferWriteData <= (others => '0');
      sCrntPositionIndicatorDly1 <= (others => '0');
      sCntRemPixels <= (others => '0');
      sOtherPixelsData <= (others => '0');

    elsif sCntRemPixels = 0 then
      if m_axis_video_tready = '1' then
        if s_axis_video_tvalid = '1' then
          sStrobesShiftReg(0).Last <= '0';
          if s_axis_video_tlast = '1' then
            sAXI_SlaveLastAsserted <= '1';
          end if;
          -- RAMインターフェイス信号値を割り当てる。
          sLineBufferWrite <= '1';
          sLineBufferCrntAddr <= sCntColumns;
          sCntColumns <= sCntColumns + 1;
          sStrobesShiftReg(0).FirstColumn <= '0';
          if sCntColumns = 0 then
            sStrobesShiftReg(0).FirstColumn <= '1';
          end if;
          sLineBufferWriteData <= s_axis_video_tdata(sLineBufferWriteData'range);
          sCrntPositionIndicatorDly1 <= sCrntPositionIndicator;
          -- 残りのピクセルをシフトする。
          sCntRemPixels <= "11";
          sOtherPixelsData <= s_axis_video_tdata(s_axis_video_tdata'left downto
            sLineBufferWriteData'length);
        else
          sLineBufferWrite <= '0';
        end if;
      else
        sLineBufferWrite <= '0';
      end if;

    else
      if m_axis_video_tready = '1' then
        -- Assign RAM interface signals
        sLineBufferWrite <= '1';
        sLineBufferCrntAddr <= sCntColumns;
        if (sAXI_SlaveLastAsserted = '1') and (sCntRemPixels = 1) then
          sCntColumns <= (others => '0');
          sStrobesShiftReg(0).FirstColumn <= '0';
          sAXI_SlaveLastAsserted <= '0';
          sStrobesShiftReg(0).Last <= '1';
        else
          sCntColumns <= sCntColumns + 1;
          sStrobesShiftReg(0).FirstColumn <= '0';
          if sCntColumns = 0 then
            sStrobesShiftReg(0).FirstColumn <= '1';
          end if;
        end if;
        sLineBufferWriteData <= sOtherPixelsData(sLineBufferWriteData'range);
        sCrntPositionIndicatorDly1 <= sCrntPositionIndicator;
        -- Shift remaining pixels
        sCntRemPixels <= sCntRemPixels - 1;
        sOtherPixelsData <= "00"&x"00" & sOtherPixelsData(sOtherPixelsData'left downto
          sLineBufferWriteData'length);
      else
        sLineBufferWrite <= '0';
      end if;
    end if;

  end if;
end process PutInputDataInRAM;

-- This signal is asserted if the downstream AXI component is ready to receive data AND we
-- have processed pixels to send to it (either we just received a new set of pixels from
-- the upstream component, either we still have at least one more pixel from the last
-- received set).

-- この信号は、ダウンストリームAXIコンポーネントがデータを受信する準備ができていて、送信するピクセルを
-- 処理した場合にアサートされます（アップストリームコンポーネントから新しいピクセルセットを受信したか、
-- または少なくとも1つ以上のピクセルをまだ持っている場合）最後に受信したセット）。

-- この信号はAXIコンポーネントがデータを受信する準備ができており、送信するピクセルを処理しているとき
-- にアサートされる。
sDataIsAvailableAndRequested <= '1' when ((sCntRemPixels > 0) or
  (s_axis_video_tvalid = '1')) and (m_axis_video_tready = '1') else '0';

-- This process will assign the LineBuffer Read signal. This signal is actually a buffered
-- version of the sDataIsAvailableAndRequested signal.

-- このプロセスは、LineBuffer Read信号を割り当てます。 
-- この信号は、実際にはsDataIsAvailableAndRequested信号のバッファーバージョンです。

RamAddrBuffer: process(StreamClk)
begin
  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      sLineBufferRead <= '0';
    else
      sLineBufferRead <= sDataIsAvailableAndRequested;
    end if;
  end if;
end process RamAddrBuffer;

-- This process puts together the 2x2 pixel matrix needed for Bayer-to-RGB conversion.
-- The first matrix line is taken from the LineBuffer:
--   - sPixel(2) is the current value read from the LineBuffer;
--   - sPixel(3) is the previous value read from the LineBuffer.
-- The second matrix line is buffered from the AXI stream input:
--   - sPixel(0) is the current value read from the AXI stream input, delayed by 1
--     clock cycle;
--   - sPixel(1) is the previous value read from the AXI stream input.

-- このプロセスは、BayerからRGBへの変換に必要な2x2ピクセルマトリックスをまとめます。
-- 最初の行列行はLineBufferから取得されます：
--  sPixel（2）は、LineBufferから読み取られた現在の値です。
--  sPixel（3）は、LineBufferから読み取られた以前の値です。
--  2番目のマトリックスラインは、AXIストリーム入力からバッファリングされます。
--  sPixel（0）は、AXIストリーム入力から読み取られた現在の値で、1遅延
--  クロックサイクル;
--  sPixel（1）は、AXIストリーム入力から読み取られた以前の値です。

AssignPixelValues: process(StreamClk)
begin
  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      sPixel <= (others => (others => '0'));
      sLineBufferWriteDataDly <= (others => '0');
      sCrntPositionIndicatorDly2 <= (others => '0');
      sCrntPositionIndicatorDly3 <= (others => '0');
      sLineBufferReadDataBuf <= (others => '0');
    elsif sDataIsAvailableAndRequested = '1' then
      sLineBufferWriteDataDly <= sLineBufferWriteData;
      sCrntPositionIndicatorDly2 <= sCrntPositionIndicatorDly1;
      sCrntPositionIndicatorDly3 <= sCrntPositionIndicatorDly2;
      sPixel(0)  <= unsigned('0' & sLineBufferWriteDataDly);
      sPixel(1)  <= sPixel(0);
      sPixel(2)  <= unsigned('0' & sLineBufferReadData);
      sPixel(3)  <= sPixel(2);
      if sLineBufferWrite = '0' then
        sPixel(2)  <= unsigned('0' & sLineBufferReadDataBuf);
      end if;
    elsif sLineBufferWrite = '1' then
      sLineBufferReadDataBuf <= sLineBufferReadData;
    end if;
  end if;
end process AssignPixelValues;

-- This process keeps track of the current line number in the current frame.
-- このプロセスは、現在のフレームの現在の行番号を追跡します。

AssignLineNumber: process(StreamClk)
begin
  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      sCntLines  <= (others => '0');
    elsif m_axis_video_tready = '1' then
      if (sCntRemPixels = 1) and (sAXI_SlaveLastAsserted = '1') then
        sCntLines  <= sCntLines + 1;
      end if;

      if (s_axis_video_tvalid = '1') and (sCntRemPixels = 0) and
        (s_axis_video_tuser = '1') then
        sCntLines  <= (others => '0');
      end if;
    end if;
  end if;
end process AssignLineNumber;

-- This process assigns the User signal for the AXI stream output. The User signal is
-- asserted only if the User signal was asserted on the AXI stream input AND we currently
-- send the first pixel in the received set.
-- This process also assigns the FirstLine signal needed for changing to grey the first
-- line and the first column in each frame. The FirstLine signal is asserted as the same
-- time as the User signal, but it is deasserted only after the pixel marked as Last in
-- the current line is received by the downstream circuit.

-- このプロセスは、AXIストリーム出力にユーザー信号を割り当てます。 
-- User信号がAXIストリーム入力でアサートされ、受信したセットの最初のピクセルを
-- 現在送信している場合にのみ、User信号がアサートされます。
-- このプロセスは、各フレームの最初の行と最初の列をグレーに変更するために必要なFirstLine信号も割り当てます。
--  FirstLine信号はUser信号と同時にアサートされますが、現在の行でLastとしてマークされた
-- ピクセルがダウンストリーム回路で受信された後にのみアサート解除されます。
AssignUserAndFirstLine: process(StreamClk)
begin
  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      sStrobesShiftReg(0).User <= '0';
      sStrobesShiftReg(0).FirstLine <= '0';
    elsif m_axis_video_tready = '1' then
      sStrobesShiftReg(0).User <= '0';

      if (sStrobesShiftReg(0).Last = '1') and (s_axis_video_tvalid = '1') and
        (m_axis_video_tready = '1') and (sCntRemPixels = 0) then
        sStrobesShiftReg(0).FirstLine <= '0';
      end if;

      if (s_axis_video_tvalid = '1') and (sCntRemPixels = 0) and
        (s_axis_video_tuser = '1') then
        sStrobesShiftReg(0).User <= '1';
        sStrobesShiftReg(0).FirstLine <= '1';
      end if;
    end if;
  end if;
end process AssignUserAndFirstLine;

-- Pixel position indicator in the 2x2 pixel matrix.
-- 2x2ピクセルマトリックスのピクセル位置インジケーター。

sCrntPositionIndicator <= sCntLines(0) & sCntColumns(0);

-- Based on current position in the Bayer matrix, we decide from which position we take
-- the blue, the green and the red pixels which we will then use to form a complete
-- pixel (RGB).

-- Bayerマトリックスの現在の位置に基づいて、青、緑、赤のピクセルをどの位置から取得するかを決定し、
-- これらのピクセルを使用して完全なピクセル（RGB）を形成します。
AssignOutputs: process(StreamClk)
begin
  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      sAXIMasterBlue  <= (others => '0');
      sAXIMasterGreen <= (others => '0');
      sAXIMasterRed  <= (others => '0');
    elsif sDataIsAvailableAndRequested = '1' then
      if (sStrobesShiftReg(2).FirstColumn = '1') or
        (sStrobesShiftReg(2).FirstLine = '1') then
        sAXIMasterBlue  <= to_unsigned(512, sAXIMasterBlue'length);
        sAXIMasterGreen <= to_unsigned(1024, sAXIMasterGreen'length);
        sAXIMasterRed  <= to_unsigned(512, sAXIMasterRed'length);
      else
        case sCrntPositionIndicatorDly3 is
          when "01" =>
            sAXIMasterBlue  <= sPixel(1)(kBayerWidth-1 downto 0);
            sAXIMasterGreen <= sPixel(0) + sPixel(3);
            sAXIMasterred  <= sPixel(2)(kBayerWidth-1 downto 0);
          when "00" =>
            sAXIMasterBlue  <= sPixel(0)(kBayerWidth-1 downto 0);
            sAXIMasterGreen <= sPixel(1) + sPixel(2);
            sAXIMasterRed  <= sPixel(3)(kBayerWidth-1 downto 0);
          when "11" =>
            sAXIMasterBlue  <= sPixel(3)(kBayerWidth-1 downto 0);
            sAXIMasterGreen <= sPixel(1) + sPixel(2);
            sAXIMasterRed  <= sPixel(0)(kBayerWidth-1 downto 0);
          when "10" =>
            sAXIMasterBlue  <= sPixel(2)(kBayerWidth-1 downto 0);
            sAXIMasterGreen <= sPixel(0) + sPixel(3);
            sAXIMasterRed  <= sPixel(1)(kBayerWidth-1 downto 0);
          when others => null;
        end case;
      end if;
    end if;
  end if;
end process AssignOutputs;

-- This process shifts the registers containing the User and the Last signals for
-- the AXI stream output, as well as some internal signals.
-- このプロセスは、AXIストリーム出力のユーザー信号と最終信号、およびいくつかの内部信号を含むレジスタをシフトします。
ShiftStrobes: process(StreamClk)
begin
  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      sStrobesShiftReg(3 downto 1) <= (others => ('0', '0', '0', '0'));
    elsif sDataIsAvailableAndRequested = '1' then
      sStrobesShiftReg(3 downto 1) <= sStrobesShiftReg(2 downto 0);
    end if;
  end if;
end process ShiftStrobes;

-- This process assigns the Valid signal on the AXI stream output interface.
--  このプロセスは、AXIストリーム出力インターフェイスに有効な信号を割り当てます。
AssignValid: process(StreamClk)
begin
  if rising_edge(StreamClk) then
    if sStreamReset_n = '0' then
      m_axis_video_tvalid <= '0';
    elsif (sDataIsAvailableAndRequested = '1') and (sCoverInitialLatency = '1') then
      m_axis_video_tvalid <= '1';
    elsif m_axis_video_tready = '1' then
      m_axis_video_tvalid <= '0';
    end if;
  end if;
end process AssignValid;

-- Assign AXI stream output interface signals.
-- -AXIストリーム出力インターフェイス信号を割り当てます。
m_axis_video_tuser  <= sStrobesShiftReg(3).User;
m_axis_video_tlast  <= sStrobesShiftReg(3).Last;
m_axis_video_tdata  <= "00" & std_logic_vector(sAXIMasterGreen(kBayerWidth downto 1)) & 
    std_logic_vector(sAXIMasterBlue)&
    std_logic_vector(sAXIMasterRed);

end rtl;

