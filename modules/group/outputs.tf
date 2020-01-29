output "group" {
  value = {
    id        = "${aws_iam_group.this.id}"
    arn       = "${aws_iam_group.this.arn}"
    name      = "${aws_iam_group.this.name}"
    path      = "${aws_iam_group.this.path}"
    unique_id = "${aws_iam_group.this.unique_id}"
  }
}
