#
#  Author: KhulnaSoft Ltd
#  Date: 2019-03-01 17:11:41 +0000 (Fri, 01 Mar 2019)
#
#  vim:ts=4:sts=4:sw=4:et
#
#  https://github.com/KhulnaSoft/DevX/tree/main/docker-images
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

# nosemgrep: dockerfile.audit.dockerfile-source-not-pinned.dockerfile-source-not-pinned
FROM khulnasoft/centos-java:jdk8

ARG OPENTSDB_VERSION=2.4.0

LABEL org.opencontainers.image.description="OpenTSDB" \
      org.opencontainers.image.version="$OPENTSDB_VERSION" \
      org.opencontainers.image.authors="KhulnaSoft Ltd (https://www.linkedin.com/company/khulnasoft)" \
      org.opencontainers.image.url="https://ghcr.io/KhulnaSoft/opentsdb" \
      org.opencontainers.image.documentation="https://hub.docker.com/r/khulnasoft/opentsdb" \
      org.opencontainers.image.source="https://github.com/KhulnaSoft/DevX/tree/main/docker-images"

WORKDIR /

RUN \
    yum install -y "https://github.com/OpenTSDB/opentsdb/releases/download/v${OPENTSDB_VERSION}/opentsdb-${OPENTSDB_VERSION}.noarch.rpm" && \
    yum autoremove -y && \
    mkdir -pv /etc/hbase/conf && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY hbase-site.xml /etc/hbase/conf/
COPY entrypoint.sh /
COPY opentsdb.conf /etc/opentsdb/

EXPOSE 4242

CMD ["/entrypoint.sh"]
