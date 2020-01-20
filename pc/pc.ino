#include <SoftwareSerial.h>
#define pin 7
#define led 6
#define btn 8

uint32_t _us, us = 0;

SoftwareSerial mySerial(10,11);//RX, TX

void setup()
{
  // put your setup code here, to run once:
  pinMode(btn, INPUT_PULLUP);
  pinMode(led, OUTPUT);
  pinMode(pin, INPUT);
  Serial.begin(115200);
  mySerial.begin(115200);
}

void loop()
{
  // put your main code here, to run repeatedly:
  if (!btn){
    digitalWrite(led, HIGH);
    _us = micros();
    while(Serial.read() == -1);
    us = micros;
    int tmp = us - _us;
    mySerial.println(tmp);
  }
}
