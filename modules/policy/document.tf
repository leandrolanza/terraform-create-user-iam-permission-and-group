data "aws_iam_policy_document" "this" {
    statement = ["${var.statements}"]
}
