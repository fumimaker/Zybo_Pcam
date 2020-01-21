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

def find_rect_of_target_color(image):
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV_FULL)
    h = hsv[:, :, 0]
    s = hsv[:, :, 1]
    mask = np.zeros(h.shape, dtype=np.uint8)

    mask[(h==0) & (s==0)] = 128
    contours, _ = cv2.findContours(mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    rects = []
    for contour in contours:
        approx = cv2.convexHull(contour)
        rect = cv2.boundingRect(approx)
        rects.append(np.array(rect))
    return rects

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
    
    
    rects = find_rect_of_target_color(frame)
    if len(rects) > 0:
      rect = max(rects, key=(lambda x: x[2] * x[3]))
      cv2.rectangle(frame, tuple(rect[0:2]), tuple(rect[0:2] + rect[2:4]), (0, 0, 255), thickness=2)
    cv2.imshow('red', frame)

    count += 1

    # qを押したら終了
    k = cv2.waitKey(1)
    if k == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()