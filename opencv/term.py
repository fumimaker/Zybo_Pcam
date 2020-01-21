import cv2
import numpy as np

cap = cv2.VideoCapture(0)
#cap.set(cv2.CAP_PROP_FPS, 30)
print(cap.get(cv2.CAP_PROP_FPS))

tm = cv2.TickMeter()
tm.start()
count = 0
max_count = 10
fps = 0

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
    cv2.imshow("frame", frame)

    count += 1

    # qを押したら終了
    k = cv2.waitKey(1)
    if k == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()