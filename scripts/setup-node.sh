#!/bin/bash
# Shamelessly adapted from our friends at GitLab. Thanks guys!
# https://gitlab.com/gitlab-org/gitlab-build-images/tree/master/scripts

source /scripts/envsetup.sh

NODE_INSTALL_VERSION=${NODE_VERSION:-7.x}
YARN_INSTALL_VERSION=${YARN_VERSION:-0.27.5-1}

# Map MAJOR.MINOR.patch -> MAJOR.x
NODE_INSTALL_VERSION=`echo $NODE_INSTALL_VERSION | sed -r -e "s/([0-9]+)\.[0-9]+.*/\1\.x/g"`

curl -sS -L https://deb.nodesource.com/setup_${NODE_INSTALL_VERSION} | bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list



apt-get update -q
apt-get install -y nodejs yarn=$YARN_INSTALL_VERSION


apt-get clean -yqq
rm -rf /var/lib/apt/lists/*
