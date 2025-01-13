#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2020-03-18 15:37:05 +0000 (Wed, 18 Mar 2020)
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

if [ -z "${APPVEYOR_TOKEN:-}" ]; then
    echo "\$APPVEYOR_TOKEN not found in environment"
    exit 1
fi

# leading whitespace break PowerShell commands
pwsh <<EOF
Import-Module AppVeyorBYOC
Connect-AppVeyorToComputer -AppVeyorUrl https://ci.appveyor.com -ApiToken $APPVEYOR_TOKEN
EOF
