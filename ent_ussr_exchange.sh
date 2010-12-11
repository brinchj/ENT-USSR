#!/usr/bin/env zsh

BLOCK=4096

# Recieve entropy
ssh $1 "dd if=/dev/urandom bs=${BLOCK} count=1" \
  | dd of=/dev/urandom
# Send entropy
dd if=/dev/urandom bs=${BLOCK} count=1 \
  | ssh $1 "dd of=/dev/urandom 2>&1" &>/dev/null

