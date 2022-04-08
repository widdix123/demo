locals {
  bucket_name = "${var.bucket_name}-${var.environment}"
}

resource "aws_transfer_user" "ftp" {
  server_id = aws_transfer_server.sftp.id
  user_name = var.sftp_user
  role      = var.logging_role

  home_directory = "/${local.bucket_name}/${var.sftp_folder}/"
  /*home_directory_mappings {
    entry  = "/incoming"
    target = "/${var.bucket_name}/incoming"
  }*/
}