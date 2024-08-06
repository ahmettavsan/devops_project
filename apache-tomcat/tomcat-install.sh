#!/bin/bash

sudo apt-get update
sudo apt-get install -y openjdk-11-jdk wget

TOMCAT_VERSION=9.0.72

wget https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz

sudo tar xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz -C /opt

sudo ln -s /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat

sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat

sudo chown -R tomcat: /opt/apache-tomcat-${TOMCAT_VERSION}
sudo chmod -R u+rwx /opt/apache-tomcat-${TOMCAT_VERSION}

sudo /opt/tomcat/bin/startup.sh