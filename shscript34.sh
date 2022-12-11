#send an Email if server memory reached its threshhold
#!bin/bash
pr=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%/ /g'`
thr=36
if [ $pr -gt $thr ]
then
   echo "disk space reached $thr percentage" | mail -s "Disk space threshold $thr % reached " harugeri.girish@gmail.com 
echo "send an Email"
fi
