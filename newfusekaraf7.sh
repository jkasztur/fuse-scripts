#!/usr/bin/env bash

if [[ $# -eq 0 ]] ; then
    echo 'no parameters, use 7.0.0.fuse-000173'
    exit 1
fi

if [ -d "$FUSE_HOME" ]; then
  echo 'Removing old fuse'
  rm -rf $FUSE_HOME/*
else
  echo 'No old fuse'
fi

unzip -q /home/jkasztur/Downloads/FUSE/fuse-karaf-$1 -d $FUSE_HOME

echo "admin=admin,admin,manager,viewer,Monitor, Operator, Maintainer, Deployer, Auditor, Administrator, SuperUser" > $FUSE_HOME/*-$1/etc/users.properties
echo 'Done'