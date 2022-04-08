resource "aws_cloudwatch_event_rule" "console" {
  name        = local.name
  description = "Trigger CronJob Job for Event Rule"
  schedule_expression = var.schedule_expression
}


resource "aws_cloudwatch_event_target" "lambda" {
  arn  = aws_lambda_function.lambda.arn
  rule = aws_cloudwatch_event_rule.console.id
}

resource "aws_cloudwatch_log_group" "lambda" {
  name              = "/aws/lambda/${local.name}"
  retention_in_days = var.retention_in_days
}