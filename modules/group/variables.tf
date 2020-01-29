variable "name" {}

variable "path" {
  default = "/"
}

variable "policies_arn" {
  type        = "list"
  description = "A list of IAM Policies ARN to attach to the IAM Group"
  default     = []
}