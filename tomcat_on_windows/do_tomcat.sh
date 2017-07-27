#!/usr/bin/env bash

# git clone https://github.com/jkasztur/fuse-scripts.git;cd fuse-scripts/;git checkout test-windows;chmod +x tomcat_on_windows/*;./tomcat_on_windows/do_tomcat.sh

wget http://apache.miloslavbrada.cz/tomcat/tomcat-7/v7.0.79/bin/apache-tomcat-7.0.79-windows-x64.zip

unzip -q apache-tomcat-7.0.79-windows-x64.zip

chmod +x apache-tomcat-7.0.79/bin/*

cat tomcatusers.xml > apache-tomcat-7.0.79/conf/tomcat-users.xml

./apache-tomcat-7.0.79/bin/startup.sh

wget https://gitlab.mw.lab.eng.bos.redhat.com/jbossqe-soa/certifications/repository/archive.zip?ref=6.3.x -O archive.zip --no-check-certificate

unzip -q archive.zip -d certifications

cd certifications/certifications.git/camel-cert

mvn.bat -Pdeploy-tomcat,it-tests clean install -fae

cd ../cxf-cert

mvn.bat -Pdeploy-tomcat,it-tests clean install -fae

../../../apache-tomcat-7.0.79/bin/shutdown.sh
