#!/usr/bin/env sh

arecord -d1 -f cd 2>&1 | sha512sum | cut -f1 -d' '
