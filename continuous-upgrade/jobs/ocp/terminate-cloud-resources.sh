#!/bin/bash
set -o errexit -o nounset -o pipefail -o xtrace
latest=$( readlink $HOME/origin-ci-tool/latest )
touch $latest
cp $latest/bin/activate $WORKSPACE/activate
cat >> $WORKSPACE/activate <<EOF
export OCT_CONFIG_HOME=~/continuous-upgrade/
EOF

source $WORKSPACE/activate
oct deprovision

curl -kL "https://ci.openshift.redhat.com/jenkins/job/continuous-upgrade_provision-job/build?token=origin1"