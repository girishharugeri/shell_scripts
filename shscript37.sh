#!/bin/bash
var1=/home/ubuntu/kernel4
var2="$14"
ls -lrt $var1 | awk 'NR>1 {print $NF}' | > kernel4_output
count=`cat kernel4_output | wc -l`
echo "$total"
while read line
do
	if [ $total -gt $var2 ]
	then
		rm -rf $var1/$line
		total=`expr $total - 1`
	fi
done < $kernel4_output 
