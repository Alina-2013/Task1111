resource "aws_iam_group" "developers" {
    name = "developers"
    path = "/"
}

resource "aws_iam_group" "management" {
    name = "management"
    path = "/"
}
resource "aws_iam_group_membership" "developers_team" {
  name = "developers-group-membership"
  users = [
    "${aws_iam_user.Bob1.name}",
    "${aws_iam_user.Tim1.name}",
    "${aws_iam_user.Ben1.name}"
  ]
  group = "${aws_iam_group.developers.name}"
}

resource "aws_iam_group_membership" "management_team" {
  name = "management-group-membership"
  users = [
    "${aws_iam_user.Ben1.name}"
  ]
  group = "${aws_iam_group.management.name}"
}
