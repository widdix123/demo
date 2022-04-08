resource "aws_transfer_server" "sftp" {
  endpoint_type = var.endpoint_type
  protocols     = var.protocols
  identity_provider_type = var.identity_provider_type
  logging_role         = var.logging_role
  force_destroy        = var.force_destroy
  security_policy_name = var.security_policy_name
  host_key             = tls_private_key.rsa.private_key_pem 
  tags = merge(
    var.default_tags,
    tomap(
      {
        "Name"        = "${var.sftp_name}",
        "environment" = "${var.environment}"
      }
    )
  )
}