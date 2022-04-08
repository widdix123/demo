# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

/*
//Commenting the backend as it is not required right now
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "dixio-infra-terraform-state"
    key    = "dixio/dev/infra.tfstate"
    region = "us-east-1"
  }
}
*/

