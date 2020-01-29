
module "admin_policy" {
  source      = "modules/policy"
  name        = "admin_policies"
  description = "Permission for admins"
  statements  = ["${local.admin_statements}"]
}


module "group_admin" {
  source       = "modules/group"
  name         = "admin"
  policies_arn = ["${module.admin_policy.policy["arn"]}"]
}

module "user1" {
  source = "modules/user"
  name   = "user1"
  groups = ["${module.group_admin.group["name"]}"]
}