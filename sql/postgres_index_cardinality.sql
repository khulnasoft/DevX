--
--  Author: KhulnaSoft Ltd
--  Date: 2020-08-06 00:18:01 +0100 (Thu, 06 Aug 2020)
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

-- PostgreSQL index cardinality
--
-- Tested on PostgreSQL 8.4, 9.x, 10.x, 11.x, 12.x, 13.0

SELECT
    relname,
    --relkind,
    reltuples AS "cardinality (reltuples)",
    relpages
FROM
    pg_class
WHERE
    relkind = 'i'
    --    AND
    --relname LIKE 'someprefix%';
        AND
    relname NOT ILIKE 'pg_%'
ORDER BY
    2 DESC;
