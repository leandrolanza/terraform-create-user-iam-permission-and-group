
module "dev_policy" {
  source      = "modules/policy"
  name        = "dev_policies"
  description = "Permission for devs"
  statements  = ["${local.dev_statements}"]
}

module "group_dev" {
  source       = "modules/group"
  name         = "dev"
  policies_arn = ["${module.dev_policy.policy["arn"]}"]
}

module "user2" {
  source = "modules/user"
  name   = "user2"
  groups = ["${module.group_dev.group["name"]}"]
}

module "user3" {
  source = "modules/user"
  name   = "user3"
  groups = ["${module.group_dev.group["name"]}"]
}