#!/usr/bin/env bash

if [[ $# -eq 0 ]] ; then
    echo 'no parameters, use 6.3.0.redhat-069'
    exit 1
fi

neweap='/home/jkasztur/repos/fuse-scripts/neweap.sh'
$neweap

java -jar /home/jkasztur/Downloads/fuse-eap-installer-$1.jar $EAP_HOME
