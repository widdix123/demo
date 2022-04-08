resource "aws_transfer_user" "ftp" {
  server_id = aws_transfer_server.sftp.id
  user_name = var.sftp_user
  role      = var.logging_role

  home_directory_type = "LOGICAL"
  home_directory_mappings {
    entry  = "/incoming"
    target = "${var.bucket_name}/incoming/"
  }
}