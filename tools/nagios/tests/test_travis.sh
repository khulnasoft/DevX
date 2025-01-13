#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2016-08-22 16:17:31 +0100 (Mon, 22 Aug 2016)
#
#  https://github.com/KhulnaSoft/Nagios-Plugins
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help improve or steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
srcdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$srcdir/..";

# shellcheck disable=SC1090
. "$srcdir/utils.sh"

section "T r a v i s   C I"

# this repo should always be working
#run ./check_travis_ci_last_build.py -r KhulnaSoft/DevOps-Bash-tools

run_fail "0 2" ./check_travis_ci_last_build.py -r KhulnaSoft/Nagios-Plugins

echo "check warning threshold to induce failure as builds should always take longer than 10 secs:"
run_fail "1 2" ./check_travis_ci_last_build.py -r KhulnaSoft/Nagios-Plugins -v -w 10

echo "check critical threshold to induce failure as builds should always take longer than 10 secs:"
run_fail 2 ./check_travis_ci_last_build.py -r KhulnaSoft/Nagios-Plugins -v -c 10

run_fail "0 2" ./check_travis_ci_last_build.py -r KhulnaSoft/DevOps-Perl-tools

run_fail "0 2" ./check_travis_ci_last_build.py -r KhulnaSoft/spotify-tools

run_fail "0 2" ./check_travis_ci_last_build.py -r KhulnaSoft/DevOps-Python-tools

run_fail "0 2" ./check_travis_ci_last_build.py -r KhulnaSoft/pylib

run_fail "0 2" ./check_travis_ci_last_build.py -r KhulnaSoft/lib

run_fail "0 2" ./check_travis_ci_last_build.py -r KhulnaSoft/lib-java

run_fail "0 2" ./check_travis_ci_last_build.py -r KhulnaSoft/Nagios-Plugin-Kafka

run_fail "0 2" ./check_travis_ci_last_build.py -r KhulnaSoft/spark-apps

echo "checking no builds returned:"
# looks like this is now case insensitive and detects the builds
#run_fail 3 ./check_travis_ci_last_build.py -r khulnasoft/Nagios-Plugins -v
run_fail 3 ./check_travis_ci_last_build.py -r khulnasoft/nonexistent -v

echo "checking wrong repo name/format:"
run_usage ./check_travis_ci_last_build.py -r test -v

run_usage ./check_travis_ci_last_build.py -r khulnasoft/ -v

run_usage ./check_travis_ci_last_build.py -r /Nagios-Plugins -v

run_usage ./check_travis_ci_last_build.py -r tools -v

echo "checking nonexistent repo:"
run_fail 3 ./check_travis_ci_last_build.py -r nonexistent/repo -v

# defined and tracked in bash-tools/lib/utils.sh
# shellcheck disable=SC2154
echo "Completed $run_count Travis CI tests"
echo
echo "All Travis CI tests passed successfully"
echo
echo
