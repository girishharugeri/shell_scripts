#!/bin/bash

#Before installing jenkins we need to install java 
#first need to update

sudo apt update

#now install java
sudo apt install default-jdk

#Now need to fetch latest versions from internet and add repository key to the system

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

#append theDebian package repository address to the server's source list

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

#will run update

sudo apt update

#now we need to install Jenkins and it's dependencies

sudo apt install jenkins

#now start and can check status of jenkins using systemctl

sudo systemctl start jenkins

sudo systemctl status jenkins
