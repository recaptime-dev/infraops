#!/usr/bin/dumb-init /bin/sh
# shellcheck shell=bash

# Just a simple wrapper to detect if we have DOPPLER_TOKEN in the
# container and exec the command through doppler run
if [[ $DOPPLER_TOKEN != "" ]]; then
  echo "Running container with secrets from Doppler"
  exec doppler run -- "$@"
else
  exec "$@"
fi