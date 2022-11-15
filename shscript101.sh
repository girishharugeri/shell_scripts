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
printf "today is $day"
discount=0
if [ $day = Saturday ]
then
        discount=5
        printf "\n --Enjoy your Saturdays special discount--\n"
fi
case $x  in
1)printf "Please pay ₹$((20 - $discount)) and Enjoy your Idli\n"
;;
2)printf "Please pay ₹$((20 - $discount)) and Enjoy your vada\n"
;;
3)printf "Please pay ₹$((45 - $discount)) and Enjoy your Masala Dose\n"
;;
4)printf "Please pay ₹$((23 - $discount)) and Enjoy your Bisibele Bath\n"
;;
5)printf "Please pay ₹$((35 - $discount)) and Enjoy your ChowChoe Bath\n"
;;
6)printf "Please pay ₹$((40 - $discount)) and Enjoy your Poori Bhaji\n"
;;
7)printf "Please pay ₹$((20 - $discount)) and Enjoy your Avalakki\n"
;;
8)printf "Please pay ₹$((20 - $discount)) and Enjoy your Shavige Bath\n"
;;
9)printf "Please pay ₹$((27 - $discount)) and Enjoy your Paddu\n"
;;
10)printf "Please pay ₹$((10 - $discount)) and Enjoy your Tea/Coffee\n"
;;
*)printf "Invalid option\n"
;;
esac
printf "\n Do you want other Tiffin?[y/n] \n"
read opt


if [[ ($opt != y ) || ( $opt != Y ) ]]
then
        printf "$end"
fi

done
