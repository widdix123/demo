module "aws_transfer" {
    source                  = "../modules/awstransfer"
    bucket_name             = var.bucket_name
    environment             = var.environment
    endpoint_type           = var.endpoint_type
    protocols               = var.protocols
    identity_provider_type  = var.identity_provider_type
    force_destroy           = var.force_destroy
    security_policy_name    = var.security_policy_name
    sftp_name               = var.sftp_name
    sftp_user               = var.sftp_user
    logging_role            = module.iam.iam_role_arn
    default_tags            = var.default_tags
}