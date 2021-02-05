resource "aws_iam_group" "Developer" {
  name = "developer"
  path = "/"
}

resource "aws_iam_group" "Management" {
  name = "Management"
  path = "/"
}

resource "aws_iam_group_membership" "Developer" {
  name = "Developer-group-membership"

  users = [
    "${aws_iam_user.Tim.name}",
    "${aws_iam_user.Bob.name}",
    "${aws_iam_user.Ben.name}",
  ]

  group = "${aws_iam_group.Developer.name}"
}

resource "aws_iam_group_membership" "Management" {
  name = "Developer-group-membership"

  users = [
    "${aws_iam_user.Ben.name}",
  ]

  group = "${aws_iam_group.Management.name}"
}
