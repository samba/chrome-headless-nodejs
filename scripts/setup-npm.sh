#!/bin/bash
# The selection of tools is based on Google's notes:
# https://developers.google.com/web/updates/2017/06/headless-karma-mocha-chai

source /scripts/envsetup.sh

npm install --upgrade -g \
    {babel,grunt,gulp}-cli \
    gyp nyc istanbul \
    jshint eslint \
    mocha karma chai karma-mocha karma-chai \
    google-closure-compiler-js \
    karma-chrome-launcher \
    puppeteer selenium-webdriver chromedriver