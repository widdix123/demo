module "lambda" {
  source = "../modules/lambda"
  lambda_function_name  = var.lambda_function_name
  environment		    = var.environment
  environment_variables = var.environment_variables
  index_handler         = var.index_handler
  schedule_expression   = var.schedule_expression
  timeout		        = var.timeout
  filename              = var.filename

}