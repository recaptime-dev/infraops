FROM alpine:edge AS base

COPY overlays/alpine/ /

# Adapted from our old repository at https://gitlab.com/recaptime-dev-olddata/infra/docker/custom-cicd-images/-/blob/ad529304d89dab8c1bc1bd0cc665a28158cf950c/docker/bulldozer-abuild/Dockerfile
RUN apk add --no-cache \
  # Alpine devenv starter pack
  alpine-sdk \
  abuild \
  atools \
  lua-aports \
  pigz \
  # sudo is being moved to community repo since the dev team recommends doas instead.
  doas \
  # in case an package needs glibc-based libs
  gcc \
  gcc-gnat \
  # base Git packages
  git \
  git-lfs \
  # GLab CLI for authenication purposes
  glab \
  # performance monitoring inside the container
  htop \
  # Text editor
  nano \
  # All shell script issues shall be shallow.
  shellcheck \
  spdx-licenses-list \
  # For init system management, instead of going full-blown openrc
  dumb-init \
  # Git-over-SSH access + agents
  openssh-client \
  gpg \
  gpg-agent \
  keychain

