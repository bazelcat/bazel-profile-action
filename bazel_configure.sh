#!/bin/bash
set -e
SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
GITHUB_JOB=${GITHUB_JOB:-0}
echo $GITHUB_RUNTIME_TOKEN >> "/tmp/${GITHUB_JOB}.action_env.sh"
echo "BAZEL_PROFILE_ROOT=$SCRIPTPATH" >> "/tmp/${GITHUB_JOB}.action_env.sh"
BAZEL=$(which bazel)
echo "Original bazel $BAZEL"

BAZELISK=$(which bazelisk)
echo "Original bazelisk $BAZELISK"
printenv

sudo mv $BAZEL $BAZEL.og
sudo cp $SCRIPTPATH/bazelw $BAZEL
sudo mv $BAZELISK $BAZELISK.og
sudo cp $SCRIPTPATH/bazelw $BAZELISK
