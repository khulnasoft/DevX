--
--  Author: KhulnaSoft Ltd
--  Date: 2024-10-11 03:50:00 +0300 (Fri, 11 Oct 2024)
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

-- Oracle - Show All Users Recyclebins via DBA Recyclebin
--
-- Tested on Oracle 19c

SELECT
    owner,
    object_name,
    original_name,
    type,
    droptime,
    space
FROM
    dba_recyclebin
ORDER BY
    owner,
    droptime
DESC;
