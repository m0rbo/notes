#if [[ $(ssh sles12lp upower -i /org/freedesktop/UPower/devices/battery_BAT1 |grep state|awk '{print $2}') != "fully-charged" ]]; then echo "Power OUT, sles12lp on Battery"|mail -s "Power OUT sles12lp on Battery" bendily@gmail.com; fi
#if [[ $(ssh openleap upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "fully-charged" ]]; then echo "Power OUT, openleap on Battery"|mail -s "Power OUT openleap on Battery" bendily@gmail.com; fi
#if [[ $(ssh tumble upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "fully-charged" ]]; then echo "Power OUT, tumble on Battery"|mail -s "Power OUT tumble on Battery" bendily@gmail.com; fi
#if [[ $(ssh bbendily upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "fully-charged" ]]; then echo "Power OUT, bbendily on Battery"|mail -s "Power OUT bbendily on Battery" bendily@gmail.com; fi

#if [[ $(ssh sles12lp upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "full-charged" ]]; then echo -e "$(ssh sles12lp upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state)\n Power OUT, sles12lp on Battery"|mail -s "Power OUT sles12lp on Battery" bendily@gmail.com; fi
#if [[ $(ssh openleap upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "full-charged" ]]; then echo -e "$(ssh openleap upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state)\n Power OUT, openleap on Battery"|mail -s "Power OUT openleap on Battery" bendily@gmail.com; fi
#if [[ $(ssh tumble upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "full-charged" ]]; then echo -e "$(ssh tumble upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state)\n Power OUT, tumble on Battery"|mail -s "Power OUT tumble on Battery" bendily@gmail.com; fi
#if [[ $(ssh bbendily upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "full-charged" ]]; then echo -e "$(ssh bbendily upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state)\n Power OUT, bbendily on Battery"|mail -s "Power OUT bbendily on Battery" bendily@gmail.com; fi

if [[ $(ssh sles12lp upower -i /org/freedesktop/UPower/devices/battery_BAT1 |grep state|awk '{print $2}') != "fully-charged" ]]

then 
   if [ ! -f /tmp/batterytest-sles12lp ]
   then
   echo -e "$(ssh sles12lp upower -i /org/freedesktop/UPower/devices/battery_BAT1 |grep state)\n Power OUT, sles12lp on Battery"|mail -s "Power OUT sles12lp on Battery" bendily@gmail.com;touch /tmp/batterytest-sles12lp
   fi

else rm -f /tmp/batterytest-sles12lp 

fi


#if [[ $(ssh openleap upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "fully-charged" ]]; then echo -e "$(ssh openleap upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state)\n Power OUT, openleap on Battery"|mail -s "Power OUT openleap on Battery" bendily@gmail.com;touch /tmp/batterytest-openleap;else rm -f /tmp/batterytest-openleap; fi
if [[ $(ssh tumble upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "fully-charged" ]]

then 
   if [ ! -f /tmp/batterytest-tumble ]
   then
   echo -e "$(ssh tumble upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state)\n Power OUT, tumble on Battery"|mail -s "Power OUT tumble on Battery" bendily@gmail.com;touch /tmp/batterytest-tumble
   fi

else rm -f /tmp/batterytest-tumble

fi



if [[ $(ssh bbendily upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "fully-charged" ]]

then
   if [ ! -f /tmp/batterytest-bbendily ]
   then
   echo -e "$(ssh bbendily upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state)\n Power OUT, bbendily on Battery"|mail -s "Power OUT bbendily on Battery" bendily@gmail.com;touch /tmp/batterytest-bbendily
   fi

else rm -f /tmp/batterytest-bbendily

fi


if [[ $(ssh openleap upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state|awk '{print $2}') != "fully-charged" ]] 

then
   if [ ! -f /tmp/batterytest-openleap ]
   then 
   echo -e "$(ssh openleap upower -i /org/freedesktop/UPower/devices/battery_BAT0 |grep state)\n Power OUT, openleap on Battery"|mail -s "Power OUT openleap on Battery" bendily@gmail.com;touch /tmp/batterytest-openleap
   fi

else rm -f /tmp/batterytest-openleap

fi
