# This build prepares environment for CI job wfk-prod-smoke-tests-quickstarts
export WFK_VERSION=2.6.0
export EAP_VERSION=6.2.3

if [[ -z $JENKINS_URL ]]; then
   export JENKINS_URL=http://jenkins.mw.lab.eng.bos.redhat.com/hudson
fi

export WFK_BUILD_URL=http://download.eng.bos.redhat.com/brewroot/packages/com.redhat.jboss-jboss-wfk/${WFK_VERSION}/1/maven/com/redhat/jboss/jboss-wfk/${WFK_VERSION}/

export SNOWDROP_SOURCES_ZIP=${WFK_BUILD_URL}/jboss-wfk-${WFK_VERSION}-snowdrop-src.zip

export QUICKSTARTS_ZIP=https://github.com/jboss-developer/jboss-wfk-quickstarts/archive/${WFK_VERSION}.zip

export EAP_ZIP=http://download.devel.redhat.com/released/JBEAP-6/${EAP_VERSION}/jboss-eap-${EAP_VERSION}.zip

export EAP_REPO_ZIP=http://download.devel.redhat.com/released/JBEAP-6/${EAP_VERSION}/jboss-eap-${EAP_VERSION}-maven-repository.zip

export WFK_REPO_ZIP=${JENKINS_URL}/view/WFK/view/WFK-PROD-CI/job/wfk-prod-maven-repository-builder-rdu_only/lastSuccessfulBuild/artifact/jboss-wfk-${WFK_VERSION}-maven-repository.zip

