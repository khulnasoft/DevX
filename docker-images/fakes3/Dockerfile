#
#  Author: KhulnaSoft Ltd
#  Date: 2019-10-21 17:24:49 +0100 (Mon, 21 Oct 2019)
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
FROM ruby:2.6.5-alpine

LABEL org.opencontainers.image.description="FakeS3" \
      org.opencontainers.image.authors="KhulnaSoft Ltd (https://www.linkedin.com/company/khulnasoft)" \
      org.opencontainers.image.url="https://ghcr.io/KhulnaSoft/fakes3" \
      org.opencontainers.image.documentation="https://hub.docker.com/r/khulnasoft/fakes3" \
      org.opencontainers.image.source="https://github.com/KhulnaSoft/DevX/tree/main/docker-images"

RUN set -ex && \
    mkdir -pv /data && \
    gem install fakes3

WORKDIR /data

EXPOSE 4567

ENTRYPOINT ["fakes3", "-r", "/data", "-p", "4567", "--license"]
