#
#  Author: KhulnaSoft Ltd
#  Date: 2016-12-23 10:03:26 +0000 (Fri, 23 Dec 2016)
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
FROM rabbitmq:3.8

ARG RABBITMQ_VERSION=3.8

LABEL org.opencontainers.image.description="RabbitMQ Cluster" \
      org.opencontainers.image.version="$RABBITMQ_VERSION" \
      org.opencontainers.image.authors="KhulnaSoft Ltd (https://www.linkedin.com/company/khulnasoft)" \
      org.opencontainers.image.url="https://ghcr.io/KhulnaSoft/rabbitmq-cluster" \
      org.opencontainers.image.documentation="https://hub.docker.com/r/khulnasoft/rabbitmq-cluster" \
      org.opencontainers.image.source="https://github.com/KhulnaSoft/DevX/tree/main/docker-images"

COPY entrypoint.sh /
COPY rabbitmq-cluster /

EXPOSE 15672

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/rabbitmq-cluster"]
