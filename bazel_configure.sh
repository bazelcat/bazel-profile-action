#!/bin/bash

GITHUB_JOB=${GITHUB_JOB:-0}
echo $GITHUB_RUNTIME_TOKEN >> "/tmp/${GITHUB_JOB}.action_env.sh"
sudo mv /usr/local/bin/bazel /usr/local/bin/bazel.og
sudo cp .github/actions/foobar/bazel /usr/local/bin/bazel
sudo mv /usr/local/bin/bazelisk /usr/local/bin/bazelisk.og
sudo cp .github/actions/foobar/bazel /usr/local/bin/bazelisk
