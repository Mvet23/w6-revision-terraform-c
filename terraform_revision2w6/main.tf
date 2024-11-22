resource "aws_iam_user" "navelly" {
  name = "navelly"
}

resource "aws_iam_user" "alice" {
  name = "alice"
}

resource "aws_iam_user" "bob" {
  name = "bob"
}

resource "aws_iam_group" "devops" {
  name = "devops"
}

resource "aws_iam_group" "admins" {
  name = "admins"
}

resource "aws_iam_group_membership" "devops_membership" {
  name  = "devops-membership"
  group = aws_iam_group.devops.name

  users = [
    aws_iam_user.navelly.name,
    aws_iam_user.alice.name,
    aws_iam_user.bob.name,
  ]
}

resource "aws_iam_group_membership" "admins_membership" {
  name  = "admins-membership"
  group = aws_iam_group.admins.name

  users = [
    aws_iam_user.alice.name,
    #aws_iam_user.bob.name,
  ]
}

resource "aws_iam_policy" "admins_policy" {
  name        = "admins-policy"
  description = "Full access to EC2"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = "ec2:*"
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_group_policy_attachment" "admins_policy_attachment" {
  group      = aws_iam_group.admins.name
  policy_arn = aws_iam_policy.admins_policy.arn
}

resource "aws_iam_user_policy_attachment" "alice_admin_attachment" {
  user       = aws_iam_user.alice.name
  policy_arn = aws_iam_policy.admins_policy.arn
}
