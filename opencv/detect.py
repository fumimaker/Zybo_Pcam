import cv2
import numpy as np
import serial
import time

def find_rect_of_target_color(image):
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV_FULL)
    h = hsv[:, :, 0]
    s = hsv[:, :, 1]
    mask = np.zeros(h.shape, dtype=np.uint8)
    #mask[((h < 150) & (h > 90)) & (s > 128)] = 180
    mask[((h < 150) & (h > 90)) & (s > 128)] = 180
    contours, _ = cv2.findContours(mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    rects = []
    for contour in contours:
        approx = cv2.convexHull(contour)
        rect = cv2.boundingRect(approx)
        rects.append(np.array(rect))
    return rects

if __name__ == "__main__":
    tm = cv2.TickMeter()
    tm.start()
    count = 0
    max_count = 10
    fps = 0
    ser = serial.Serial('COM6', 115200, timeout=0.1)
    time.sleep(1)
    
    capture = cv2.VideoCapture(0)
    #capture.set(cv2.CAP_PROP_FRAME_WIDTH, 1280) # カメラ画像の横幅を1280に設定
    #capture.set(cv2.CAP_PROP_FRAME_HEIGHT, 720) # カメラ画像の縦幅を720に設定

    while 1:
        _, frame = capture.read()
        if count == max_count:
            tm.stop()
            fps = max_count / tm.getTimeSec()
            tm.reset()
            tm.start()
            count = 0
        cv2.putText(frame, 'FPS: {:.2f}'.format(fps),
                    (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 255, 0), thickness=2)
        rects = find_rect_of_target_color(frame)
        if len(rects) > 0:
            rect = max(rects, key=(lambda x: x[2] * x[3]))
            print(rect[2], rect[3])
            cv2.rectangle(frame, tuple(rect[0:2]), tuple(rect[0:2] + rect[2:4]), (255, 0, 0), thickness=2)
            if((rect[2]>=12) and (rect[3]>=11)):
                print("detected")
                ser.write(b'a')
        count += 1
        cv2.imshow('LED detection', frame)
        k = cv2.waitKey(1)
        if k == ord('q'):
            break
    capture.release()
    cv2.destroyAllWindows()
    ser.close()
