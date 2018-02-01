#!/usr/bin/env bash

if [[ $# -eq 0 ]] ; then
    echo 'no parameters, use 6.3.0.redhat-069'
    exit 1
fi

if [ -d "$FUSE_HOME" ]; then
  echo 'Removing old fuse'
  rm -rf $FUSE_HOME/*
else
  echo 'No old fuse'
fi

unzip -q /home/jkasztur/Downloads/FUSE/jboss-fuse-full-$1 -d $FUSE_HOME

echo "admin=admin123.,admin,manager,viewer,Monitor, Operator, Maintainer, Deployer, Auditor, Administrator, SuperUser" > $FUSE_HOME/jboss-fuse-$1/etc/users.properties
echo 'Done'
