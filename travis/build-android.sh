#!/bin/bash -v

set -e

# Build Ionic App for Android
cordova platform add android --nofetch

if [[ "$TRAVIS_BRANCH" == "develop" ]]
then
    ionic build android
else
    ionic build android --release
fi
