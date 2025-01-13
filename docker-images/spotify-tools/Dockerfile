#
#  Author: KhulnaSoft Ltd
#  Date: 2016-01-16 09:58:07 +0000 (Sat, 16 Jan 2016)
#
#  vim:ts=4:sts=4:sw=4:et
#
#  https://github.com/KhulnaSoft/DevX/tree/main/docker-images
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help improve or steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

# nosemgrep: dockerfile.audit.dockerfile-source-not-pinned.dockerfile-source-not-pinned
FROM alpine:3.12

LABEL org.opencontainers.image.description="Spotify Tools" \
      org.opencontainers.image.authors="KhulnaSoft Ltd (https://www.linkedin.com/company/khulnasoft)" \
      org.opencontainers.image.url="https://ghcr.io/KhulnaSoft/spotify-tools" \
      org.opencontainers.image.documentation="https://hub.docker.com/r/khulnasoft/spotify-tools" \
      org.opencontainers.image.source="https://github.com/KhulnaSoft/DevX/tree/main/docker-images"

ENV PATH $PATH:/github/spotify-tools:/github/spotify-tools/bash-tools

RUN mkdir -v /github

WORKDIR /github

# hadolint ignore=DL3003
RUN set -eux && \
    x=spotify-tools; \
    apk add --no-cache make git && \
    git clone https://github.com/khulnasoft/$x /github/$x && \
    cd /github/$x && \
    make build clean && \
    make apk-packages-remove && \
    apk del make git

WORKDIR /github/spotify-tools

# trying to do -exec basename {} \; results in only the jython files being printed
# hadolint ignore=DL3025
CMD find /github/spotify-tools -maxdepth 2 -type f -name '*.pl' -o -type f -name '*.sh' | grep spotify | grep -v old/ | xargs -n1 basename | sort
