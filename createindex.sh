#!/bin/bash

#ls -1 |grep -v DVRWorkDirectory|grep -v index.html

fulldir="/localssd/ftp/pub/upload/AMC0559A_E9A3DA"
htmldir="/ftp/pub/upload/AMC0559A_E9A3DA"

#delete old images more that 5 days old
#find /etc/openhab2/html/ -mtime 5 -name 'image*.jpg' -exec rm -f {} \;

#delete old images more that 21 days old
find $fulldir/  -maxdepth 1 -type d -mtime +21 -exec rm -rf {} \;

#cp /etc/openhab2/html/index.temp /etc/openhab2/html/index.html
#ls -1 /etc/openhab2/html/*.jpg|sed 's/\/etc\/openhab2\/html\///' |awk '{print "<a href=\"http://garage:8080/static/"$1"\">http://garage:8080/static/"$1"</a><p>"}' >> /etc/openhab2/html/index.html

cp $fulldir/index.head $fulldir/index.html
for f in $(ls -1 $fulldir |grep -v DVRWorkDirectory|grep -v testssh|grep -v index ); do

	dirdate=$(ls -lad $fulldir/$f|awk '{print $8}')
	dirsize=$(du -skh $fulldir/$f|awk '{print $1}')
	dirtotalsize=$(du -skh $fulldir/|awk '{print $1}')
#       echo $f

       lastjpg=$(find $fulldir/$f/ -iname "*.jpg"|tail -n1|sed 's/\/localssd//')
       lastmp4=$(find $fulldir/$f/ -iname "*.mp4"|tail -n1|sed 's/\/localssd//')
       echo "<a href="$f/">$f/</a>     <a href="$lastjpg">jpg</a> <a href="$lastmp4">mp4</a>         $f $dirdate $dirsize" >> $fulldir/index.html


  #<a href="2020-04-24/">2020-04-24/</a>                                        24-Apr-2020 19:53

done

echo "<br> " >> $fulldir/index.html
echo "Full dir path: $fulldir" >> $fulldir/index.html
echo "Total dir size: $dirtotalsize" >> $fulldir/index.html
echo "<br> " >> $fulldir/index.html

percleft=$(df -Ph /localssd|tail -n1|awk '{print $5}'|sed s/%//)
if [ $percleft -gt "80" ]

then
#echo $percleft
#echo "$percleft" >> $fulldir/index.html
echo "Disk space:" >> $fulldir/index.html
echo "<h1>$(df -h /localssd)</h1>" >> $fulldir/index.html
echo "<h1>EMERGENCY: Percent Space left: <b><font color="#ff0000">$percleft<b></h1>" >> $fulldir/index.html
     if [ $percleft -gt "89" ]
     then
	ssh 192.168.0.46 'echo "localssh Disk space on host Mini is low. see: $percleft" |mail -sDISK_SPACE_LOW_ON_MINI bendily@gmail.com'
     fi
else
echo "Disk space:" >> $fulldir/index.html
echo "$(df -h /localssd)" >> $fulldir/index.html
fi
echo $(date) >> $fulldir/index.html
cat $fulldir/index.tail >> $fulldir/index.html
