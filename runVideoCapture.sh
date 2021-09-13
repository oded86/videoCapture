#!/bin/bash

cd "${0%/*}"
source env/bin/activate

python3 app.py https://stream.cawamo.com/hof/hof1.m3u8 images/hof1.jpg 
exiftool images/hof1.jpg -gpslongitude=34.8061518  -gpslatitude=31.9633645  -gpslongituderef=E -gpslatituderef=N
mv images/hof1.jpg /var/www/html/rishon_images/hof1.jpg

python3 app.py https://stream.cawamo.com/hof/hof2.m3u8 images/hof2.jpg
exiftool images/hof2.jpg -gpslongitude=34.7589993  -gpslatitude=31.9868454  -gpslongituderef=E -gpslatituderef=N
mv images/hof2.jpg /var/www/html/rishon_images/hof2.jpg

python3 app.py https://stream.cawamo.com/hof/hof3.m3u8 images/hof3.jpg
exiftool images/hof3.jpg -gpslongitude=34.7756257  -gpslatitude=31.9904997  -gpslongituderef=E -gpslatituderef=N
mv images/hof3.jpg /var/www/html/rishon_images/hof3.jpg

python3 app.py https://stream.cawamo.com/hof/hof4.m3u8 images/hof4.jpg
exiftool images/hof4.jpg -gpslongitude=34.735946   -gpslatitude=31.9997001  -gpslongituderef=E -gpslatituderef=N
mv images/hof4.jpg /var/www/html/rishon_images/hof4.jpg

python3 app.py https://stream.cawamo.com/hof/hof5.m3u8 images/hof5.jpg
exiftool images/hof5.jpg -gpslongitude=34.798872   -gpslatitude=31.9987027  -gpslongituderef=E -gpslatituderef=N
mv images/hof5.jpg /var/www/html/rishon_images/hof5.jpg

python3 app.py https://stream.cawamo.com/hof/hof6.m3u8 images/hof6.jpg
exiftool images/hof6.jpg -gpslongitude=34.8265797  -gpslatitude=31.9987252  -gpslongituderef=E -gpslatituderef=N
mv images/hof6.jpg /var/www/html/rishon_images/hof6.jpg

python3 app.py https://stream.cawamo.com/hof/hof7.m3u8 images/hof7.jpg
exiftool images/hof7.jpg -gpslongitude=34.7708592  -gpslatitude=31.972712  -gpslongituderef=E -gpslatituderef=N
mv images/hof7.jpg /var/www/html/rishon_images/hof7.jpg

python3 app.py https://stream.cawamo.com/hof/hof8.m3u8 images/hof8.jpg
exiftool images/hof8.jpg -gpslongitude=34.8053061  -gpslatitude=31.9809297  -gpslongituderef=E -gpslatituderef=N
mv images/hof8.jpg /var/www/html/rishon_images/hof8.jpg

python3 app.py https://stream.cawamo.com/hof/hof8.m3u8 images/hof9.jpg
exiftool images/hof9.jpg -gpslongitude=34.7654157  -gpslatitude=31.986014  -gpslongituderef=E -gpslatituderef=N
mv images/hof9.jpg /var/www/html/rishon_images/hof9.jpg

#python3 app.py https://s47.ipcamlive.com/streams/2ftnildsoyu2gh3mq/stream.m3u8 mages/pats_us1.png |  exiftool -GPSLongitude="14.273586"  -GPSLatitude="50.860361" images/pats_us1.png | cp images/pats_us1.png /var/www/html/rishon_images/pats_us1.png
#python3 app.py https://outbound-production.explore.org/stream-production-117/.m3u8  /var/www/html/rishon_images/pats_us2.png
#python3 app.py 'https://dogpark.peta.org/axis-cgi/mjpg/video.cgi?Resolution=800x540&fps=0&compression=90&dummy=1630580654517'  /var/www/html/rishon_images/pats_us3.png
sleep 10
ls -ln /var/www/html/rishon_images/
deactivate
