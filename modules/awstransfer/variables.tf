variable "environment" {
   default = "dev"
  
}

//SFTP
variable "sftp_name" {
   description = "Name of your choice for the sftp service"
   default = "test"
}

variable "endpoint_type" {
  description = "The type of endpoint that you want your SFTP server connect to. If you connect to a VPC (or VPC_ENDPOINT), your SFTP server isn't accessible over the public internet"
   default = "PUBLIC"
}


variable "protocols" {
   default = ["SFTP"]
   description = "Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint."
  
}

variable "identity_provider_type" {
   description = "The mode of authentication enabled for this service"
  
   default = "SERVICE_MANAGED"
}

variable "force_destroy" {
   description = "A boolean that indicates all users associated with the server should be deleted so that the Server can be destroyed without error"
   default = false
}

variable "security_policy_name" {
  description = "Specifies the name of the security policy that is attached to the server"
  default = "TransferSecurityPolicy-2020-06"
}

variable "sftp_user" {
    description = "User Name for the sftp"
  
}
variable "logging_role" {
  
}
//Tags

variable "default_tags" {
  description = "Default tags for all resources"
  type        = map(any)
}

//S3 
variable "bucket_name" {
  description = "name of the s3 bucket"
}

variable "sftp_folder" {
   default = "/incoming/"
   description = "Folder in s3 for the sftp files"
}

