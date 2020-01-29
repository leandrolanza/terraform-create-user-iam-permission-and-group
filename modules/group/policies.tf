resource "aws_iam_group_policy_attachment" "this" {
  group      = "${aws_iam_group.this.name}"
  policy_arn = "${element(var.policies_arn, count.index)}"
}