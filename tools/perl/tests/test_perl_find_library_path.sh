#!/usr/bin/env bash
# shellcheck disable=SC2154
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2019-09-27
#
#  https://github.com/KhulnaSoft/DevOps-Perl-tools
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help improve or steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

set -eu
[ -n "${DEBUG:-}" ] && set -x
srcdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$srcdir/..";

# shellcheck disable=SC1091
. ./tests/utils.sh

section "Perl Find Library Path"

start_time="$(start_timer "perl_find_library_path")"

run ./perlpath.pl

run_grep '/File/Basename.pm$' "$perl" -T ./perl_find_library_path.pl File::Basename
run_grep '/JSON.pm' "$perl" -T ./perl_find_library_path.pl JSON
run_grep '/JSON.pm' "$perl" -T ./perl_find_library_path.pl JSON Time::HiRes
run_grep '/Time/HiRes.pm' "$perl" -T ./perl_find_library_path.pl JSON Time::HiRes
run_grep 'lib/KhulnaSoftUtils.pm' "$perl" -T ./perl_find_library_path.pl KhulnaSoftUtils
run_grep 'lib/KhulnaSoft/Solr.pm' "$perl" -T ./perl_find_library_path.pl KhulnaSoft::Solr
ERRCODE=2 run_grep '' "$perl" -T ./perl_find_library_path.pl nonexistentmodule
run_grep 'Perl' "$perl" -T ./perl_find_library_path.pl
run_usage "$perl" -T ./perl_find_library_path.pl -h
run_usage "$perl" -T ./perl_find_library_path.pl --help

echo
echo "Total Tests run: $run_count"
time_taken "$start_time" "SUCCESS! All tests for perl_find_library_path.pl completed in"
echo
