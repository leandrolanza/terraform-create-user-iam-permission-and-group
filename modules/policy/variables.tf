variable "name" {}

variable "description" {}

variable "path" {
  default = "/"
}

variable "statements" {
  type = "list"
}
