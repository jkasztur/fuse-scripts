#!/usr/bin/env bash


if [ -d "$EAP_HOME" ]; then
  echo 'Removing old EAP'
  rm -rf $EAP_HOME
else
  echo 'No old EAP'
fi

unzip -q /home/jkasztur/Downloads/jboss-eap-6.4.6-full-build.zip -d /home/jkasztur/programs/

echo 'Done'
