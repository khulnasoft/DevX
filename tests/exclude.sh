#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2019-10-18 12:00:08 +0100 (Fri, 18 Oct 2019)
#
#  https://github.com/KhulnaSoft/DevX/tree/main/docker-images
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help improve or steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x

# dirs to exclude from iterating in Makefiles
exclude_list="
bash-tools
old
ranger
tests
"

for excluded in $exclude_list; do
    if [ "${1:-}" = "$excluded" ]; then
        exit 0
    fi
done

exit 1
