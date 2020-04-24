#!/Users/fumi/.pyenv/shims/python

import numpy as np
import cv2
cap = cv2.VideoCapture(1)
#cap.set(cv2.CAP_PROP_FPS, 30)

while(True):
    
    # Capture frame-by-frame
    ret, frame = cap.read()
    # Display the resulting frame
    qr = cv2.QRCodeDetector()
    data, points, _ = qr.detectAndDecode(frame)
    print(data, points)
    cv2.imshow('frame', frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# When everything done, release the capture
cap.release()
cv2.destroyAllWindows()
