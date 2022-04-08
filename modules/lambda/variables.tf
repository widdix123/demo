variable "schedule_expression" {
  default = "cron(0 20 * * ? *)"
}

variable "retention_in_days" {
    default = "14"
}
variable "lambda_function_name" {
  
}

variable "environment" {}

variable "environment_variables" {}

variable "index_handler" {}

variable "runtime" {
    default = "python3.9"
}

variable "timeout" {
    default = "900"
}


variable "filename" {
  default = "lambda_function_payload.zip"
}