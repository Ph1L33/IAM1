resource "aws_iam_group_membership" "sergeants" {
  name = "sergeants"

  users = [
    aws_iam_user.sergeant_one.name,
    aws_iam_user.sergeant_two.name,
  ]

  group = aws_iam_group.sergeants.name

}

resource "aws_iam_group_membership" "airmen" {
  name = "airmen"

  users = [
    aws_iam_user.airmen_one.name,
    aws_iam_user.airmen_two.name,
    aws_iam_user.airmen_three.name,
    aws_iam_user.airmen_four.name
  ]

  group = aws_iam_group.airmen.name

}

resource "aws_iam_group" "airmen" {
  name = "airmen"
}

resource "aws_iam_group" "sergeants" {
  name = "sergeants"
}

resource "aws_iam_user" "airmen_one" {
  name = "airmen_one"
}

resource "aws_iam_user" "airmen_two" {
  name = "airmen_two"
}

resource "aws_iam_user" "airmen_three" {
  name = "airmen_three"
}

resource "aws_iam_user" "airmen_four" {
  name = "airmen_four"
}

resource "aws_iam_user" "sergeant_one" {
  name = "sergeant_one"
}

resource "aws_iam_user" "sergeant_two" {
  name = "sergeant_two"
}