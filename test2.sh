#!/bin/bash
#script to reverse the file
echo "Enter the name of a file"
read file
count=`cat $file | wc -l`
while [ $count -gt 0 ]
do
	head -$count $file | tail -1
	count=`expr $count - 1`
done
