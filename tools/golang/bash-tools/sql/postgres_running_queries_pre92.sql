--
--  Author: KhulnaSoft Ltd
--  Date: 2020-08-05 12:52:58 +0100 (Wed, 05 Aug 2020)
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

-- Running queries for PostgreSQL <= 9.1
--
-- Requires PostgreSQL <= 9.1
--
-- Tested on PostgreSQL 8.4, 9.0, 9.1

SELECT
    procpid,
    age(clock_timestamp(), query_start),
    usename,
    current_query
FROM
    pg_stat_activity
WHERE
    current_query != '<IDLE>'
      AND
    current_query NOT ILIKE '%pg_stat_activity%'
ORDER BY
    query_start DESC;
