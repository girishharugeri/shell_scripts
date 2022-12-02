#!/bin/bash

#change directory to /opt
cd /opt

#deleteing existing apache-tomcat if any
sudo rm -rf apache-tomcat-10.0.27.tar.gz

#first we need fetch tomcat latest version from tomcat website (at present tomcat version is 10.0.27)
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz

#now we need to unzip the apache tomcat folder 
sudo tar -xzvf /opt/apache-tomcat-10.0.27.tar.gz

# changing configuration via server.xml and tomcat-users.xml
sudo sed -i 's/8080/8095/1' /opt/apache-tomcat-10.0.27/conf/server.xml
sudo sed -i '/<\/tomcat-users>/i <role rolename="manager-gui"/>\n <role rolename="manager-script"/>\n <role rolename="manager-jmx"/>\n <role rolename="manager-status"/>\n <user username="admin" password="admin" roles="manager-gui, manager-script, manager-jmx, manager-status"/>\n <user username="deployer" password="deployer" roles="manager-script"/>\n <user username="tomcat" password="s3cret" roles="manager-gui"/>\n' /opt/apache-tomcat-10.0.27/conf/tomcat-users.xml

# Commenting on valve classname in manager and hostmanager subfolders of webapps folder
sudo sed -i '/<Valve /i <!--\n ' /opt/apache-tomcat-10.0.27/webapps/manager/META-INF/context.xml
sudo sed -i '/<Manager /i -->\n ' /opt/apache-tomcat-10.0.27/webapps/manager/META-INF/context.xml

sudo sed -i '/<Valve /i <!--\n ' /opt/apache-tomcat-10.0.27/webapps/host-manager/META-INF/context.xml
sudo sed -i '/<Manager /i -->\n ' /opt/apache-tomcat-10.0.27/webapps/host-manager/META-INF/context.xml

#now we create link for tomcat to start/stop from anywere
sudo ln -s /opt/apache-tomcat-10.0.27/bin/startup.sh /usr/local/bin/tomcatup
sudo ln -s /opt/apache-tomcat-10.0.27/bin/shutdown.sh /usr/local/bin/tomcatdown

#to start tomcat 
sudo tomcatup
