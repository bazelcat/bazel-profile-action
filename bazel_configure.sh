#!/bin/bash
set -e
SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
GITHUB_JOB=${GITHUB_JOB:-0}
echo $GITHUB_RUNTIME_TOKEN >> "/tmp/${GITHUB_JOB}.action_env.sh"
echo "BAZEL_PROFILE_ROOT=$SCRIPTPATH" >> "/tmp/${GITHUB_JOB}.action_env.sh"
sudo mv /usr/local/bin/bazel /usr/local/bin/bazel.og
sudo cp $SCRIPTPATH/bazelw /usr/local/bin/bazel
sudo mv /usr/local/bin/bazelisk /usr/local/bin/bazelisk.og
sudo cp $SCRIPTPATH/bazelw /usr/local/bin/bazelisk
