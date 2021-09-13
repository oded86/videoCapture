import cv2
import sys


url = sys.argv[1]
file_name = sys.argv[2]
vidcap = cv2.VideoCapture(url)
success,image = vidcap.read()

success = True
while success:
    #success,image = vidcap.read()
    #cv2.imwrite(file_name, image)  
    try:
        success,image = vidcap.read()
        cv2.imwrite(file_name, image)     # save frame as JPEG file
        img = cv2.resize(image,(704,320))
        cv2.imwrite(file_name, img)
        success= False

    except:
        print ("There was an Error")
