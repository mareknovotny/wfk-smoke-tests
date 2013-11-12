#
# This build prepares environment for CI job wfk-prod-smoke-tests-quickstarts

source ./smoke-test-properties.sh

# get all demo zips from MEAD build
wget -q -nHp -r --cut-dirs=11 -A-demo.zip $WFK_BUILD_URL

# get snowdrop sources to use SNOWDROP INSTALLER
wget -q $SNOWDROP_SOURCES_ZIP

# WFK quickstarts
wget -q $QUICKSTARTS_ZIP

### JBoss EAP SETUP
# Get JBoss EAP
wget -q --no-check-certificate $EAP_ZIP

### REPOSITORIES SETUP
# Get repositories
wget -q --no-check-certificate $WFK_REPO_ZIP
wget -q --no-check-certificate $EAP_REPO_ZIP

