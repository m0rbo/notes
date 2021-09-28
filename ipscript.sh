#!/bin/bash
#script to gather libvirt virsh VMs and IPs.
for I in $(virsh list|grep -v Id|grep -v "\-\-\-"|awk '{print $2}')
do
echo $I
maccer=$(virsh dumpxml $I |grep "mac address"|awk -F\' '{ print  $2 }')
echo $maccer
#ssh root@sles12s1.suse "arp -an |grep 
ipadder=$(ssh root@sles12s1.suse "arp -an |grep -i $maccer")
echo $ipadder|awk '{print $2}'
echo ""
done
#virsh list|grep -v Id|grep -v ---|awk '{print }'
#virsh dumpxml suse15.1 |grep "mac address"|awk -F\' '{ print  $2 }'
