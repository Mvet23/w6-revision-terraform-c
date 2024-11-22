output "admins_policy_arn" {
  value = aws_iam_policy.admins_policy.arn
  description = "The ARN of the Admins Policy"
}
