#!/bin/bash
#old code using arp...
#for I in $(virsh list|grep -v Id|grep -v "\-\-\-"|awk '{print $2}')
#do
#echo $I
#maccer=$(virsh dumpxml $I |grep "mac address"|awk -F\' '{ print  $2 }')
#echo $maccer
##ssh root@sles12s1.suse "arp -an |grep 
#ipadder=$(ssh root@sles12s1.suse "arp -an |grep -i $maccer")
#echo $ipadder|awk '{print $2}'
#echo ""
#done
#virsh list|grep -v Id|grep -v ---|awk '{print }'
#virsh dumpxml suse15.1 |grep "mac address"|awk -F\' '{ print  $2 }'

#on Dec 18 2021, i discovered the use of this command:
# virsh domifaddr s15s3 --source agent|grep eth|awk '{print $2}'
# virsh domifaddr s15s3 --source agent|grep eth|awk '{print $4}'
#going to use this from now on...
echo "For this to work, make sure qemu-guest-agent service is running on guest"
echo ""
for I in $(virsh list|grep -v Id|grep -v "\-\-\-"|awk '{print $2}')
do
echo $I
#maccer=$(virsh dumpxml $I |grep "mac address"|awk -F\' '{ print  $2 }')
maccer=$(virsh domifaddr $I --source agent|grep eth|awk '{print $2}')
echo $maccer
#ssh root@sles12s1.suse "arp -an |grep 
#ipadder=$(ssh root@sles12s1.suse "arp -an |grep -i $maccer")
#echo $ipadder|awk '{print $2}'
virsh domifaddr $I --source agent|grep eth|awk '{print $4}'
echo ""
done
