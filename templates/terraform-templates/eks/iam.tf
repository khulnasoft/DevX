#  vim:ts=2:sts=2:sw=2:et
#
#  Author: KhulnaSoft Ltd
#  Date: 2021-02-11 13:04:18 +0000 (Thu, 11 Feb 2021)
#
#  https://github.com/KhulnaSoft/Terraform
#
#  License: see accompanying KhulnaSoft Ltd LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/company/khulnasoft

# ============================================================================ #
#                                     I A M
# ============================================================================ #

# https://docs.aws.amazon.com/eks/latest/userguide/cluster-autoscaler.html

resource "aws_iam_policy" "eks-cluster-autoscaler" {
  name        = "AmazonEKSClusterAutoscalerPolicy"
  path        = "/"
  description = ""

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "autoscaling:DescribeAutoScalingGroups",
                "autoscaling:DescribeAutoScalingInstances",
                "autoscaling:DescribeLaunchConfigurations",
                "autoscaling:DescribeTags",
                "autoscaling:SetDesiredCapacity",
                "autoscaling:TerminateInstanceInAutoScalingGroup",
                "ec2:DescribeLaunchTemplateVersions"
            ],
            "Resource": "*",
            "Effect": "Allow"
        }
    ]
}
EOF
}
