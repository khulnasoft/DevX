#  vim:ts=2:sts=2:sw=2:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2022-03-01 12:00:27 +0000 (Tue, 01 Mar 2022)
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
#                      GitHub Teams Repository Permissions
# ============================================================================ #

# automatically grant admin on the platform engineering team
resource "github_team_repository" "platform-engineering" {
  permission = "admin"
  repository = github_repository.repo.id
  team_id    = "platform-engineering" # team slug

  lifecycle {
    # XXX: doesn't prevent destroy when the entire resource code block is removed!
    prevent_destroy = true
    ignore_changes = [
      etag,
    ]
  }
}
