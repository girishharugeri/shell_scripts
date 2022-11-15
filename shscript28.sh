#!/bin/bash
#writing a script for where %ge is more than 70% and append to newfile\ 
echo "\n Enter the name of the file"
read file
temp=1
while read line
do
	if [ $temp -gt 1 ]
	then	
		n=`echo $line | awk '{print $NF}'`
		if [ $n -gt 70 ]
		then
	   	    echo $line >> book4_output
		fi
	fi
temp=`expr $temp + 1`
done < $file
