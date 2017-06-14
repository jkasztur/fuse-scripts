#!/usr/bin/env bash

# Needs TOMCAT_HOME variable configured in ~/.bashrc

if [ -d "$TOMCAT_HOME" ]; then
  echo 'Removing old fuse'
  rm -rf $TOMCAT_HOME/*
else
  echo 'No old tomcat'
fi

unzip -q /home/jkasztur/Downloads/JWS/apache-tomcat-8.5.11.zip -d $TOMCAT_HOME

cat /home/jkasztur/repos/fuse-scripts/tomcatusers.xml > $TOMCAT_HOME/apache-tomcat-8.5.11/conf/tomcat-users.xml
chmod +x $TOMCAT_HOME/*/bin/catalina.sh

echo 'Done'
