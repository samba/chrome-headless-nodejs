#!/bin/bash
# Shamelessly adapted from our friends at GitLab. Thanks guys!
# https://gitlab.com/gitlab-org/gitlab-build-images/tree/master/scripts

set -xeuo pipefail
IFS=$'\n\t'

source /scripts/envsetup.sh

apt-get update -yqqqq
apt-get install -yqq locales curl wget cmake unzip gettext ca-certificates


# Set UTF-8
# http://stackoverflow.com/a/3182519/2137281
cat >/etc/environment <<EOF
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
EOF

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen

locale-gen en_US.UTF-8
dpkg-reconfigure locales -f noninteractive -p critical
locale -a


apt-get clean -yqq
rm -rf /var/lib/apt/lists/*