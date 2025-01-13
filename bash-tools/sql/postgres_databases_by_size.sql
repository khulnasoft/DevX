--
--  Author: KhulnaSoft Ltd
--  Date: 2020-08-05 14:54:12 +0100 (Wed, 05 Aug 2020)
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

-- PostgreSQL databases by size descending
--
-- Tested on PostgreSQL 8.4, 9.x, 10.x, 11.x, 12.x, 13.0

SELECT
    datname,
    pg_size_pretty(pg_database_size(datname))
FROM
    pg_database
ORDER
    BY pg_database_size(datname) DESC;
