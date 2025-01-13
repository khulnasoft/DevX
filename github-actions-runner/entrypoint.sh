#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2021-11-05 03:27:37 +0000 (Fri, 05 Nov 2021)
#
#  https://github.com/KhulnaSoft/DevX/tree/main/docker-images
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback
#
#  https://www.linkedin.com/company/khulnasoft
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
#srcdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd /actions-runner

./config.sh "$@"

./run.sh
