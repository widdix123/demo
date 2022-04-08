// AWS Region
aws_region = "us-east-1"

// Environment
environment = "dev"

//  Default tags
default_tags = {
  Purpose = "demo"
  ManagedBy = "terraform"
}

//S3
bucket_acl_type = "public-read-write"
bucket_name = "abhishek-demo-sftp-server-12345"

//SFTP
sftp_name = "demo"
endpoint_type = "PUBLIC"
protocols = ["SFTP"]
identity_provider_type = "SERVICE_MANAGED"
force_destroy = false
sftp_user = "demo"
security_policy_name = "TransferSecurityPolicy-2020-06"

//Lambdas
environment_variables = {
      S3_BUCKET_PREFIX = "incoming"
      S3_BUCKET = "abhishek-demo-sftp-server-12345-dev"
      S3_BUCKET_UPLOAD_FILE_NAME = "upload_test.txt"
}
schedule_expression = "cron(0 20 * * ? *)"
filename = "lambda_function_payload.zip"
lambda_function_name = "demo-abhishek-python-code"