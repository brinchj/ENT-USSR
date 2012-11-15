#!/usr/bin/env sh

fswebcam --png -1 -r 1280x1024 --save /dev/stdout 2>&1 | sha512sum
