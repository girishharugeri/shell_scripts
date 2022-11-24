#!/bin/bash

#first we need tto delete existing folde of hello world, so that fresh commits to the source code can be execute

rm -rf hello-world-war

#Now we need to clone the source code of hello-world-war from cetral to local repo

git clone https://github.com/girishharugeri/hello-world-war.git

#now get into hello-world-war

cd hello-world-war

#now run maven package (before run we need to install maven and java)

mvn package

#now we need to copy .war file to root

sudo cp -r target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps

#now we need to tomcat down and up

sudo tomcatdown

sudo tomcatup
