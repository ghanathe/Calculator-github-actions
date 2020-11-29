#!/bin/bash

set -eo pipefail

xcodebuild -workspace Calculator.xcworkspace \
            -scheme Calculator\ iOS \
            -sdk iphoneos \
            -configuration Release \
            -archivePath $PWD/build/Calculator.xcarchive \
            clean archive | xcpretty
