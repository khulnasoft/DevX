#
#  Author: KhulnaSoft Ltd
#  Date: 2018-01-29 18:07:10 +0000 (Mon, 29 Jan 2018)
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
FROM centos:7

LABEL org.opencontainers.image.description="Collectd on CentOS 7" \
      org.opencontainers.image.authors="KhulnaSoft Ltd (https://www.linkedin.com/company/khulnasoft)" \
      org.opencontainers.image.url="https://ghcr.io/KhulnaSoft/collectd" \
      org.opencontainers.image.documentation="https://hub.docker.com/r/khulnasoft/collectd" \
      org.opencontainers.image.source="https://github.com/KhulnaSoft/DevX/tree/main/docker-images"

ENV PATH $PATH:/NAME/bin

WORKDIR /

RUN \
    yum install -y epel-release && \
    yum install -y collectd collectd-write_prometheus collectd-write_tsdb && \
    yum autoremove -y && \
    yum clean all

COPY collectd.conf /etc/collectd.conf

CMD ["/usr/sbin/collectd", "-f"]
