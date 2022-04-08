resource "aws_iam_role" "sftp" {
  name  = "${var.sftp_name}-transfer-logging-${var.environment}"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "transfer.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "sftp" {
  name  = "${var.sftp_name}-transfer-logging-${var.environment}"
  role  = aws_iam_role.sftp.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogStream",
        "logs:DescribeLogStreams",
        "logs:CreateLogGroup",
        "logs:PutLogEvents",
        "s3:*"

      ],
      "Resource": "*"
    }
  ]
}
POLICY
}


