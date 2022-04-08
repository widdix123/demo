locals {
  name = "${var.lambda_function_name}-${var.environment}"
}

resource "aws_lambda_function" "lambda" {
  function_name     = local.name
  filename          = "${path.module}/template/${var.filename}"
  role              = aws_iam_role.iam_for_lambda.arn
  handler           = var.index_handler
  timeout	          = var.timeout
  runtime           = var.runtime
  source_code_hash  = filebase64sha256("${path.module}/template/lambda_function_payload.zip")
  environment {
    variables = var.environment_variables
  }
}
