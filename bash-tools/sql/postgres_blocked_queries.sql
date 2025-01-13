--
--  Author: KhulnaSoft Ltd
--  Date: 2020-08-05 18:53:54 +0100 (Wed, 05 Aug 2020)
--
--  vim:ts=4:sts=4:sw=4:et:filetype=sql
--
--  https://github.com/KhulnaSoft/DevX/tree/main/bash-tools/SQL
--
--  License: see accompanying KhulnaSoft Ltd LICENSE file
--
--  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
--
--  https://www.linkedin.com/company/khulnasoft
--

-- Lists PostgreSQL queries blocked along with the pids of those holding the locks blocking them
--
-- Requires PostgreSQL >= 9.6
--
-- Tested on PostgreSQL 9.6+, 10.x 11.x, 12.x, 13.0

SELECT
    pid,
    usename,
    pg_blocking_pids(pid) AS blocked_by_pids,
    query AS blocked_query
FROM
    pg_stat_activity
WHERE
    cardinality(pg_blocking_pids(pid)) > 0;
