module "s3" {
    source                = "../modules/s3"
    bucket_name           = var.bucket_name
    environment           = var.environment
    default_tags          = var.default_tags
    bucket_acl_type       = var.bucket_acl_type
}