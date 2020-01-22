import cv2
import numpy as np
import serial
cap = cv2.VideoCapture(0)
print(cap.get(cv2.CAP_PROP_FPS))

tm = cv2.TickMeter()
tm.start()
count = 0
max_count = 10
fps = 0
bgrLower = np.array([254, 254, 254])    # 抽出する色の下限(BGR)
bgrUpper = np.array([255, 255, 255])    # 抽出する色の上限(BGR)
h = 480
w = 640

counter = 0

while(1):
    # フレームを取得
    ret, frame = cap.read()

    if count == max_count:
        tm.stop()
        fps = max_count / tm.getTimeSec()
        tm.reset()
        tm.start()
        count = 0
    cv2.putText(frame, 'FPS: {:.2f}'.format(fps),
                (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 255, 0), thickness=2)
    
    for x in range(160, 320):
        for y in range(213, 426):
            
            b, g, r = frame[x, y]
            if (b,g,r) == (255, 255, 255):
                counter += 1
            

    print(counter)
    cv2.imshow('red', frame)
    counter = 0

    count += 1

    # qを押したら終了
    k = cv2.waitKey(1)
    if k == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()