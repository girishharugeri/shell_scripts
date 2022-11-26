#!/bin/bash

#change directory to /opt

cd /opt

sudo rm -rf apache-tomcat-10.0.27.tar.gz

#first we need fetch tomcat latest version from tomcat website (at present tomcat version is 10.0.27)

sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz

#now we need to unzip the apache tomcat folder 

sudo tar -xzvf /opt/apache-tomcat-10.0.27.tar.gz

#now we need to start tomcat

sudo sh /opt/apache-tomcat-10.0.27/bin/startup.sh
