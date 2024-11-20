resource "aws_iam_user" "name" {
  name = "Dianna"
}
resource "aws_iam_group" "group" {
  name = "Devops"
}
resource "aws_iam_group_membership" "Team" {
  name = "addinguser"
  group = aws_iam_group.group.name
   users = [aws_iam_user.name.name]
}