--
--  Author: KhulnaSoft Ltd
--  Date: 2020-08-06 09:51:00 +0100 (Thu, 06 Aug 2020)
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

-- List MySQL users ordered by host, user similar to auth resolution
--
-- Requires MySQL 8.0+
-- Requires MariaDB N/A
--
-- Tested on MySQL 8.0
--
-- some fields don't exist on MySQL < 8.0 and MariaDB 10.0 - 10.5, must use mysql_users_pre8.sql instead

SELECT
    host,
    user,
    max_connections,
    max_user_connections,
    password_expired,
    password_last_changed,
    password_lifetime,
    account_locked,
    password_reuse_time,
    password_require_current
FROM
    mysql.user
ORDER BY
    host,
    user;
