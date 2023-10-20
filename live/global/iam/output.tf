output "all_arns" {
  value       = aws_iam_user.user[*].arn
  description = "The ARN for user Armzig"
}
