#!/bin/bash

cd "${0%/*}"
source env/bin/activate


python3 app.py https://video1.abckam.com/live/petparadiseorlandoair-5.stream/chunklist_w893484360.m3u8 images/pats_us.jpg
exiftool images/pats_us.jpg -gpslongitude=84.273586  -gpslatitude=34.860361  -gpslongituderef=W -gpslatituderef=N
mv images/pats_us.jpg /var/www/html/rishon_images/pats_us.jpg

python3 app.py https://s47.ipcamlive.com/streams/2ftnildsoyu2gh3mq/stream.m3u8 images/pats_us1.jpg
exiftool images/pats_us1.jpg -gpslongitude=82.273586  -gpslatitude=35.860361  -gpslongituderef=W -gpslatituderef=N
mv images/pats_us1.jpg /var/www/html/rishon_images/pats_us1.jpg


python3 app.py https://outbound-production.explore.org/stream-production-117/.m3u8 images/pats_us2.jpg
exiftool images/pats_us2.jpg -gpslongitude=79.273586  -gpslatitude=36.860361  -gpslongituderef=W -gpslatituderef=N
mv images/pats_us2.jpg /var/www/html/rishon_images/pats_us2.jpg

python3 app.py 'https://dogpark.peta.org/axis-cgi/mjpg/video.cgi?Resolution=800x540&fps=0&compression=90&dummy=1630580654517' images/pats_us3.jpg
exiftool images/pats_us3.jpg -gpslongitude=84.273586  -gpslatitude=32.860361  -gpslongituderef=W -gpslatituderef=N
mv images/pats_us3.jpg /var/www/html/rishon_images/pats_us3.jpg

python3 app.py https://video3.abckam.com/live/pp-tallahassee-1.stream/chunklist_w886280491.m3u8 images/pats_us4.jpg
exiftool images/pats_us4.jpg -gpslongitude=84.253334  -gpslatitude=30.455000  -gpslongituderef=W -gpslatituderef=N
mv images/pats_us4.jpg /var/www/html/rishon_images/pats_us4.jpg

python3 app.py https://video1.abckam.com/live/ppcharlottesville-5.stream/chunklist_w1434041591.m3u8 images/pats_us5.jpg
exiftool images/pats_us5.jpg -gpslongitude=78.507980  -gpslatitude=38.033554  -gpslongituderef=W -gpslatituderef=N
mv images/pats_us5.jpg /var/www/html/rishon_images/pats_us5.jpg


sleep 10
ls -ln /var/www/html/rishon_images/
deactivate
