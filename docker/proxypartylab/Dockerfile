#syntax=docker/dockerfile:experimental
FROM dock.mau.dev/andreijiroh-dev/docker-images/caddy:nightly

LABEL dev.recaptime.opensource.repo-owner-type="squad" \
      dev.recaptime.opensource.stability-level="public-preview"

# Install Doppler CLI
RUN wget -q -t3 'https://packages.doppler.com/public/cli/rsa.8004D9FF50437357.key' \
    -O /etc/apk/keys/cli@doppler-8004D9FF50437357.rsa.pub \
  && echo 'https://packages.doppler.com/public/cli/alpine/any-version/main' \
    | tee -a /etc/apk/repositories \
  && apk add doppler

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]