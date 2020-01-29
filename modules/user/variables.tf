variable "name" {}

variable "path" {
  default = "/"
}

variable "force_destroy" {
  default = true
}

variable "groups" {
  type = "list"
}