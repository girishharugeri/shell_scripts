#!/bin/bash
opt=y
while [ $opt = Y -o $opt = y ]
do
echo " \n Enter the filename to display line by line"
read file
while read line
do
echo "$line"
echo "This is while loop"
done < $file
echo " \n Do you want to continue?[y/n]"
read opt
done


#echo "modify linux of 20"
