#!/bin/bash
echo "It will display the script name"
echo $0
echo "It will display all arguments to the script in string format"
echo $*
echo "It will display total number of arguments passed to the script"
echo $#
echo "It will dispay all arguments passed to the script in array format"
echo $@
echo "It will display PID of the last command went into the background"
echo $!
echo "It will print the status of last  executed command, 
it will display 0 if it is successful or it will display non 0 value if there is failure"
echo $?
echo "It will display the PID of the current running process"
echo $$
