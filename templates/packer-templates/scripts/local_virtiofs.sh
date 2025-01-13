#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2023-06-02 05:26:55 +0100 (Fri, 02 Jun 2023)
#
#  https://github.com/KhulnaSoft/Packer
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x

echo "Packer Environment Variables:"
echo
env | grep PACKER || :
echo
echo "Creating ~/virtiofs"
mkdir -p -v ~/virtiofs
