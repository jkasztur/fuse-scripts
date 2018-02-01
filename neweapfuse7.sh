#!/usr/bin/env bash

if [[ $# -eq 0 ]] ; then
    echo 'no parameters, use 7.0.0.fuse-000035'
    exit 1
fi

neweap='/home/jkasztur/repos/fuse-scripts/neweap7.sh'
$neweap

java -jar /home/jkasztur/Downloads/FUSE_INSTALLER/fuse-eap-installer-$1.jar $EAP_HOME
