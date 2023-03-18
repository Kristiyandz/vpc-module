resource "aws_iam_policy" "test_policy" {
  name        = "test_policy"
  path        = "/"
  description = "My Test Policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}
