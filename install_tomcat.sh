#!/bin/bash

#change directory to /opt

read -s -p "Enter Password for sudo: " sudoPW

cd /opt

sudo rm -rf apache-tomcat-10.0.27.tar.gz

#first we need fetch tomcat latest version from tomcat website (at present tomcat version is 10.0.27)

sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz

#now we need to unzip the apache tomcat folder 

sudo tar -xzvf /opt/apache-tomcat-10.0.27.tar.gz

#now we create link for tomcat to start/stop from anywere

sudo ln -s /opt/apache-tomcat-10.0.27/bin/startup.sh /usr/local/bin/tomcatup

sudo ln -s /opt/apache-tomcat-10.0.27/bin/shutdown.sh /usr/local/bin/tomcatdown

#to start tomcat 

sudo tomcatup
