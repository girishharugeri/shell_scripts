#!/bin/bash
echo "Enter 1st number"
read a
echo "Enter 2nd number"
read b
echo "Enter 1 for addition \nEnter 2 for subtraction\n"
read x
case $x in
1) c=`expr $a + $b`
	echo "The sum of 2 number is $c"
;;
2) c=`expr $a - $b`
	echo "The subtraction of 2 number is $c"
;;
*) echo "invalid option"
;;
esac
