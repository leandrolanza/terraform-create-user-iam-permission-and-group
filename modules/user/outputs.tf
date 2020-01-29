output "user" {
  value = {
    arn       = "${aws_iam_user.this.arn}"
    name      = "${aws_iam_user.this.name}"
    unique_id = "${aws_iam_user.this.unique_id}"
  }
}
