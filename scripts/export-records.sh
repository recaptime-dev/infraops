#!/usr/bin/env bash
set -e

if [[ -z "${VIRTUAL_ENV}" ]]; then
  echo "You're outside your virtualenv, proceed at your own risk".
fi

GIT_ROOT=$(git rev-parse --show-toplevel)

if [ -f "$GIT_ROOT/.env.keys" ]; then
  export $(grep -v '^#' .env.keys | xargs)
fi

dotenvx run -f .env.ci -- octodns-dump --config-file octodns-config.yml --output-dir=dns '*' cf-prod