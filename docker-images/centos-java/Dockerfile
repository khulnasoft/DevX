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
FROM centos:8

LABEL org.opencontainers.image.description="Java + CentOS (OpenJDK)" \
      org.opencontainers.image.authors="KhulnaSoft Ltd (https://www.linkedin.com/company/khulnasoft)" \
      org.opencontainers.image.url="https://ghcr.io/KhulnaSoft/centos-java" \
      org.opencontainers.image.documentation="https://hub.docker.com/r/khulnasoft/centos-java" \
      org.opencontainers.image.source="https://github.com/KhulnaSoft/DevX/tree/main/docker-images"

ARG JAVA_VERSION=8
ARG JAVA_RELEASE=JDK

RUN set -eux && \
    sed -i "s/^[[:space:]]*mirrorlist/#mirrorlist/" /etc/yum.repos.d/CentOS-* && \
    sed -i "s|^#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|" /etc/yum.repos.d/CentOS-* && \
    pkg="java-1.$JAVA_VERSION.0-openjdk" && \
    if [ "$JAVA_RELEASE" = "JDK" ]; then \
        pkg="$pkg-devel"; \
    else \
        pkg="$pkg-headless"; \
    fi; \
    yum install -y "$pkg" && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY profile.d/java.sh /etc/profile.d/

ENV JAVA_HOME=/usr

CMD ["/bin/bash"]
