#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2019-03-16 14:44:58 +0000 (Sat, 16 Mar 2019)
#
#  https://github.com/KhulnaSoft/DevX/tree/main/docker-images
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x

# building off pytools so don't need to include that
export REPOS="bash-tools perl-tools"

curl -sS https://raw.githubusercontent.com/KhulnaSoft/bash-tools/master/git/git_pull_make_repos.sh | bash
curl -sS https://raw.githubusercontent.com/KhulnaSoft/bash-tools/master/bin/clean_caches.sh | sh
