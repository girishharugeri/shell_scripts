#If any services stops automatically send an Email.
#!/bin/bash
services="sshd jenkins dockers"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "ALERT! $i has stopped running, please restart" | mail -s "Service Inactivity" harugeri.girish@gmail.com
		echo "send an Email"
	fi
done
