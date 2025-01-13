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
FROM ubuntu:20.04

LABEL org.opencontainers.image.description="Java + Ubuntu (OpenJDK)" \
      org.opencontainers.image.authors="KhulnaSoft Ltd (https://www.linkedin.com/company/khulnasoft)" \
      org.opencontainers.image.url="https://ghcr.io/KhulnaSoft/ubuntu-java" \
      org.opencontainers.image.documentation="https://hub.docker.com/r/khulnasoft/ubuntu-java" \
      org.opencontainers.image.source="https://github.com/KhulnaSoft/DevX/tree/main/docker-images"

ENV DEBIAN_FRONTEND noninteractive

ARG JAVA_VERSION=8
ARG JAVA_RELEASE=JDK

RUN bash -c ' \
    set -euxo pipefail && \
    apt-get update && \
    pkg="openjdk-$JAVA_VERSION"; \
    if [ "$JAVA_RELEASE" = "JDK" ]; then \
        pkg="$pkg-jdk-headless"; \
    else \
        pkg="$pkg-jre-headless"; \
    fi; \
    apt-get install -y --no-install-recommends "$pkg" && \
    apt-get clean && \
    rm -fr /var/lib/apt/lists \
    '

COPY profile.d/java.sh /etc/profile.d/

ENV JAVA_HOME=/usr

CMD ["/bin/bash"]
