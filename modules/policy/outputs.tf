output "policy" {
  value = {
    id          = "${aws_iam_policy.this.id}"
    arn         = "${aws_iam_policy.this.arn}"
    name        = "${aws_iam_policy.this.name}"
    description = "${aws_iam_policy.this.description}"
    path        = "${aws_iam_policy.this.path}"
    policy      = "${aws_iam_policy.this.policy}"
  }
}
