#!/bin/bash
#script  to delete old builds and delete old files
ls -lrt system1 | awk 'NR>1 {print $NF}' > output10
count=`cat ./output10 | wc -l`
while read line
do
	if [ $count -gt 10 ]
	then
		rm -rf system1/$line
		count=`expr $count - 1`
	fi
done < output10 




#girish harugeri
#good morning
#git exersise 



#echo "merging conflict"
