#!/bin/bash
opt=y
while [ $opt = Y -o $opt = y ]
do
printf "\n ------Dabbawala Tiffin Center----- "
printf "\n **** ₹5 discount on saturdays ****\n"
printf "\n --Enter corresponding number for your Tiffin-- \n\n 1:Idli(2no.)\t\t₹20 \n 2:Vada\t\t\t₹20 \n 3:Masala Dose\t\t₹45 \n 4:Bisibele Bath\t₹23 \n 5:ChowChow Bath\t₹35 \n 6:Poori Bhaji\t\t₹40 \n 7:Avalakki Bath\t₹20 \n 8:shavige Bath\t\t₹20 \n 9:Paddu\t\t₹27 \n 10:Tea/Coffe\t\t₹10 \n "
read x
end="\n **- Please visit once again -** \n"
day=`date '+%A'`
echo "today is $day"
discount=0
if [ $day = Saturday ]
then
        discount=5
        echo "\n --Enjoy your Saturdays special discount--\n"
fi
case $x  in
1)echo "Please pay ₹$((20 - $discount)) and Enjoy your Idli\n"
;;
2)echo "Please pay ₹$((20 - $discount)) and Enjoy your vada\n"
;;
3)echo "Please pay ₹$((45 - $discount)) and Enjoy your Masala Dose\n"
;;
4)echo "Please pay ₹$((23 - $discount)) and Enjoy your Bisibele Bath\n"
;;
5)echo "Please pay ₹$((35 - $discount)) and Enjoy your ChowChoe Bath\n"
;;
6)echo "Please pay ₹$((40 - $discount)) and Enjoy your Poori Bhaji\n"
;;
7)echo "Please pay ₹$((20 - $discount)) and Enjoy your Avalakki\n"
;;
8)echo "Please pay ₹$((20 - $discount)) and Enjoy your Shavige Bath\n"
;;
9)echo "Please pay ₹$((27 - $discount)) and Enjoy your Paddu\n"
;;
10)echo "Please pay ₹$((10 - $discount)) and Enjoy your Tea/Coffee\n"
;;
*)echo "Invalid option\n"
;;
esac
echo "Do you want other Tiffin?[y/n]"
read opt

if [[ ! $opt =~ ^(y|Y)$ ]]
then
	echo $end
fi 

done
