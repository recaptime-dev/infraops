#!/usr/bin/env bash
set -e

GIT_ROOT=$(git rev-parse --show-toplevel)

if [ -f "$GIT_ROOT/.env.keys" ]; then
  export $(grep -v '^#' .env.keys | xargs)
fi

dotenvx run -f "${GIT_ROOT}/.env.ci" -- octodns-dump --config-file octodns-config.yml --output-dir=dns recaptime.dev. cf-prod
dotenvx run -f "${GIT_ROOT}/.env.ci" -- octodns-dump --config-file octodns-config.yml --output-dir=dns lorebooks.eu.org. cf-prod
dotenvx run -f "${GIT_ROOT}/.env.ci" -- octodns-dump --config-file octodns-config.yml --output-dir=dns recaptime.eu.org. cf-prod