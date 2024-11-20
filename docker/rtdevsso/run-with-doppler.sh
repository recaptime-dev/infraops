#!/usr/bin/env bash
# shellcheck disable=SC2068

set -e
__git_root=$(git rev-parse --show-toplevel)
TARGET_ENV=${TARGET_ENV:-"production"}

if [[ $TARGET_ENV == "production" ]] && [[ $USE_ENV_KEYFILE != "true" ]]; then
  if [[ $INFRA_DOCKER_RTDEVSSO_DOTENV_PRIVATE_KEY_PRODUCTION == "" ]]; then
    echo "trying to load DOTENV_PRIVATE_KEY_PRODUCTION via doppler cli, please wait: ${__git_root}/scripts/wrapper-doppler $0 $*"
    exec "${__git_root}/scripts/wrapper-doppler" "$0" "$*"
  fi

  DOTENV_PRIVATE_KEY=${INFRA_DOCKER_RTDEVSSO_DOTENV_PRIVATE_KEY_PRODUCTION} \
    dotenvx run -f .env.production -- $@
elif [[ $TARGET_ENV == "production" ]] && [[ $USE_ENV_KEYFILE == "true" ]]; then
  echo "using local .env.keys file"
  dotenvx run -f .env.production -- $@
else
  echo "error: unsupported environment"
  exit 1
fi
