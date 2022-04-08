variable "bucket_name" {
    description = "Unique name for the s3 bucket"
  
}


variable "environment" {
    description = "Environment"
    default = "dev"
  
}

variable "bucket_acl_type" {
    default = "private"
  
}


//Tags

variable "default_tags" {
  description = "Default tags for all resources"
  type        = map(any)
}