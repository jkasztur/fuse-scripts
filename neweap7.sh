#!/usr/bin/env bash


if [ -d "$EAP7_HOME" ]; then
  echo 'Removing old EAP'
  rm -rf $EAP7_HOME
else
  echo 'No old EAP'
fi

unzip -q /home/jkasztur/Downloads/EAP/wildfly-dist-7.1.0.GA-redhat-2.zip -d /home/jkasztur/programs/
echo "admin = 001ecb9a0d3e57823b468e80367b2509" >> $EAP7_HOME/standalone/configuration/application-users.properties
echo "admin = f4a38770fae1a0745b58c4c7e148ee7e" >> $EAP7_HOME/standalone/configuration/mgmt-users.properties
echo 'Done'
