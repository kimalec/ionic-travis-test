#!/bin/bash -v

set -e

# Build Ionic App for iOS
cordova platform add ios --nofetch

if [[ "$TRAVIS_BRANCH" == "develop" ]]
then
    ionic build ios
else
    ionic build ios --release
fi

