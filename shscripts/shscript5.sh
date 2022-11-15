#!/bin/bash
echo "enter the 1st value"
read a
echo "enter the 2nd value"
read b
sum=`expr $a + $b`
subtract=`expr $a - $b`
product=`expr $a \* $b`
division=`expr $a / $b`
echo "The sum of two values $a and $b is $sum"
echo "The subtract of two values $a and $b is $subtract"
echo "The product of two values $a and $b is $product"
echo "The division of two values $a and $b is $division"

