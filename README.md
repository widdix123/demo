# Repo for AWS SFTP Server

This terraform module will deploy the following services:
- IAM
  - Role
  - Role Policy
    - Logs Access
    - S3 Access (currently full but we can reduce it )
- S3
  - S3 Bucket to receive the incoming files
- Transfer
  - Server
  - User
  - SSH Key
- Lambda
  - IAM Role
  - IAM Policy
  - Lambda Function
  - CloudWatch Event Rule to trigger lambda function
  - CloudWatch Log Group
  - CloudWatch Log Stream
# Usage Instructions
## Example
```terraform
terraform init
terraform workspace create new
terraform plan -var-file=envs/development.tfvars
terraform apply -var-file=envs/development.tfvars --auto-approve
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.07 |

## Inputs

Referenace in the vars file under envs/development.tfvars

## Outputs

| Name | Description |
|------|-------------|
| arn | ARN of transfer server |
| id | ID of transfer server |
