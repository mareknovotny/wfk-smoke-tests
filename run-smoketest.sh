# launch individual smoke test
#
# $1 ... what should be launched? Path to maven pom.xml 

export SMOKE_TEST_OPTS="-DwfkMavenRepoUrl=file://$WORKSPACE/jboss-wfk-maven-repository -DeapMavenRepoUrl=file://$WORKSPACE/jboss-eap-maven-repository -Dmaven.repo.local=$WORKSPACE/.repository -s $WORKSPACE/settings.xml"

mvn -U -f $1 clean install $SMOKE_TEST_OPTS

mvn -f $1 org.jboss.as.plugins:jboss-as-maven-plugin:7.4.Final:deploy $SMOTE_TEST_OPTS

sleep 1m

mvn -f $1 org.jboss.as.plugins:jboss-as-maven-plugin:7.4.Final:undeploy $SMOKE_TEST_OPTS
