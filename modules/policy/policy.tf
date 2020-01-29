resource "aws_iam_policy" "this" {
  name        = "${var.name}"
  description = "${var.description}"
  path        = "${var.path}"
  policy      = "${data.aws_iam_policy_document.this.json}"
}


