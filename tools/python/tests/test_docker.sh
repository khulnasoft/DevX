#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2016-12-08 14:38:37 +0000 (Thu, 08 Dec 2016)
#
#  https://github.com/KhulnaSoft/DevX/tree/main/tools/python
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
srcdir="$(cd "$(dirname "$0")" && pwd)"

cd "$srcdir/.."

# shellcheck disable=SC1091
. "bash-tools/lib/docker.sh"

# shellcheck disable=SC1091
. "bash-tools/lib/utils.sh"

section "Docker Image"

export DOCKER_IMAGE="khulnasoft/pytools"

if is_docker_available; then
    [ -n "${NO_DOCKER:-}" ] && exit 0
    [ -n "${NO_PULL:-}" ] ||
        docker pull "$DOCKER_IMAGE"
    docker run --rm "$DOCKER_IMAGE" welcome.py
    hr
    # this is too heavy and tests/all.sh is run as part of build
    docker run --rm -e DEBUG="${DEBUG:-}" "$DOCKER_IMAGE" tests/all.sh
fi
