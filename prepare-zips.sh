#
# prepare downloaded zips - unzip and rename them
#
#
source ./smoke-test-properties.sh

unzip -q -o \*.zip

# Rename JBoss EAP
mv jboss-eap-6.1 jboss-eap

export JBOSS_HOME=$(echo `pwd`/jboss-eap)

mv jboss-wfk-2.4.0-maven-repository jboss-wfk-maven-repository
mv jboss-eap-$EAP_VERSION.GA-maven-repository jboss-eap-maven-repository

mkdir quickstarts && mkdir .repository

mv jboss-wfk-$WFK_VERSION/demo/{errai-*,jboss-seam-*,richfaces-*,sportsclub}/* quickstarts/
mv jboss-wfk-quickstarts*/* quickstarts/

mv jboss-wfk-$WFK_VERSION/src/snowdrop-*/install snowdrop-install

# move wfk settings to current directory
wget -q --no-check-certificate https://raw.github.com/jboss-eap/quickstart/master-wfk23/settings-wfk-example.xml
mv settings-wfk-example.xml settings.xml

zip -r -q quickstarts-smoke-test-environment.zip jboss-eap/* jboss-wfk-maven-repository/* jboss-eap-maven-repository/* quickstarts/* snowdrop-install settings.xml

