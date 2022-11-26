#!/bin/bash
tomcat=8090
jenkins=8080
netstat -ntlpu | grep ":$tomcat"
if [ $? -ne 0 ]
then
	echo "ALERT! tomcat has stopped, need to restart" | mail -s "service tomcat inactivity" harugeri.girish@gmail.com
	echo "sent mail"
fi
netstat -ntlpu | grep ":$jenkins"
if [ $? -ne 0 ]
then
        echo "ALERT! jenkins has stopped, need to restart" | mail -s "service jenkins inactivity" harugeri.girish@gmail.com
        echo "sent mail"
fi

