#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2019-03-01 17:30:07 +0000 (Fri, 01 Mar 2019)
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

export HBASE_HOME=/etc/hbase

/usr/share/opentsdb/tools/create_table.sh

/usr/local/bin/tsdb tsd
