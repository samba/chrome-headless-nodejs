FROM debian:jessie

ENV DEBIAN_FRONTEND=noninteractive


ADD /scripts/*.sh /scripts/
RUN bash /scripts/setup.sh
RUN bash /scripts/setup-node.sh
RUN bash /scripts/setup-chrome.sh
RUN bash /scripts/setup-npm.sh

