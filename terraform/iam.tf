module "iam" {
    source                = "../modules/iam"
    sftp_name             = var.sftp_name
    environment           = var.environment
}