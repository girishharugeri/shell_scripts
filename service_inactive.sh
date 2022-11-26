#!/bin/bash
services="tomcat jenkins"
for i in services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "ALERT! $i has stopped, need to restart" | mail -s "service inactivity" harugeri.girish@gmail.com
		echo "sent mail"
	fi
done
