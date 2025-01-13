--
--  Author: KhulnaSoft Ltd
--  Date: 2024-10-12 06:17:50 +0300 (Sat, 12 Oct 2024)
--
--  vim:ts=4:sts=4:sw=4:et:filetype=sql
--
--  https///github.com/KhulnaSoft/DevX/tree/main/bash-tools/SQL
--
--  License: see accompanying KhulnaSoft Ltd LICENSE file
--
--  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
--
--  https://www.linkedin.com/company/khulnasoft
--

-- Oracle - Show Recent Queries
--
-- Tested on Oracle 19c

SELECT
    sql_text,
    executions
FROM
    v$sql
ORDER BY
    last_active_time
DESC;
