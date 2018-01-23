#!/bin/bash
# Shamelessly adapted from our friends at GitLab. Thanks guys!
# https://gitlab.com/gitlab-org/gitlab-build-images/tree/master/scripts

source /scripts/envsetup.sh

CHROME_VERSION=${CHROME_VERSION:-63.0.3239.132-1}


curl -sS -L https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list



apt-get update -q
apt-get install -y google-chrome-stable=$CHROME_VERSION

# Install ChromeDriver
# NOPE this gets installed in `setup-npm.sh`
# wget -q https://chromedriver.storage.googleapis.com/2.33/chromedriver_linux64.zip
# unzip chromedriver_linux64.zip -d /usr/local/bin
# rm -f chromedriver_linux64.zip


apt-get clean -yqq
rm -rf /var/lib/apt/lists/*
