#!/bin/bash
echo "enter the 1st value"
read $a
echo "enter the 2nd value"
read $b
c=`expr $a + $b`
echo "sum of 2 values is $c"
