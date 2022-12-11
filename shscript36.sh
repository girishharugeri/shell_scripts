#Delete the old builds and keep latest 10 builds
#!/bin/bash
ls -lrt | awk 'NR>1 {print $NF}' >/home/ubuntu/kernel3_output
count=`cat ../kernel3_output | wc -l`
while read line
do
	if [ $count -gt 5 ]
	then
		rm -rf $line
		count=`expr $count - 1`
	fi
done < /home/ubuntu/kernel3_output
