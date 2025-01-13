#  vim:ts=2:sts=2:sw=2:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2023-05-02 20:44:02 +0100 (Tue, 02 May 2023)
#
#  https://github.com/KhulnaSoft/Terraform
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft
#

variable "project" {
  type = string
}

variable "k8s_namespace" {
  type = string
}

variable "k8s_service_account" {
  type = string
}

variable "description" {
  type    = string
  default = ""
}

variable "display_name" {
  type    = string
  default = ""
}
