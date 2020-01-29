
module "guest_policy" {
  source      = "modules/policy"
  name        = "guest_policies"
  description = "Permission for guests"
  statements  = ["${local.guest_statements}"]
}

module "group_guest" {
  source       = "modules/group"
  name         = "guest"
  policies_arn = ["${module.guest_policy.policy["arn"]}"]
}

module "user4" {
  source = "modules/user"
  name   = "user4"
  groups = ["${module.group_guest.group["name"]}"]
}

module "user5" {
  source = "modules/user"
  name   = "user5"
  groups = ["${module.group_guest.group["name"]}"]
}