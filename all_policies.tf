locals {
  admin_statements = [
    {
      sid       = "AdminsFullAccess"
      effect    = "Allow"
      actions   = ["*"]
      resources = ["*"]
    }
  ]

  dev_statements = [
    {
      sid       = "DevLimitedAccess"
      effect    = "Allow"
      actions   = [
        "codecommit:List*",
        "codecommit:Describe*",
        "codecommit:Get*",
        "codecommit:BatchGet*",
        "ec2:Describe*",
        "ec2:Get*",
        "logs:List*",
        "logs:Describe*",
        "logs:Get*",
        "route53:List*",
        "route53:Get*",
        "s3:ListAllMyBuckets",
        "s3:ListBucket*",
      ]
      resources = ["*"]
    }
  ]

  guest_statements = [
    {
      sid     = "GuestLimitedAccess"
      effect  = "Allow"
      actions = [
        "acm:List*",
        "acm:Get*",
        "acm:Describe*",
        "cloudtrail:List*",
        "cloudtrail:Get*",
        "codedeploy:List*",
        "codedeploy:Get*",
        "codedeploy:BatchGet*",
        "config:List*",
        "config:Describe*",
        "config:Get*",
        "config:BatchGet*",
        "ec2:Describe*",
        "ec2:Get*",
        "rds:List*",
        "rds:Describe*",
      ]
      resources = ["*"]
    },
    {
      sid     = "SSH"
      effect  = "Allow"
      actions = [
        "ssm:*",
      ]
      resources = ["*"]
    },
    {
      sid     = "Others"
      effect  = "Allow"
      actions = [
        "codedeploy:*",
        "iam:List*",
        "iam:Get*",
      ]
      resources = ["*"]
    },
  ]
}
