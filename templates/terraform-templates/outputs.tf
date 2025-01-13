#  vim:ts=2:sts=2:sw=2:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2021-12-22 13:15:19 +0000 (Wed, 22 Dec 2021)
#
#  https://github.com/KhulnaSoft/Terraform
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

# ============================================================================ #
#                                 O u t p u t s
# ============================================================================ #

output "db-password" {
  value       = aws_db_instance.db.password
  description = "Password for database"
  sensitive   = true # won't be output in Terminal but will be in state file
}
