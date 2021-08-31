import cv2
import sys


url = sys.argv[1]
file_name = sys.argv[2]
vidcap = cv2.VideoCapture(url)
success,image = vidcap.read()

success = True
while success:
    try:
        success,image = vidcap.read()
        cv2.imwrite(file_name, image)     # save frame as JPEG file
        success= False

    except:
        print ("There was an Error")
