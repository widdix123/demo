output "aws_transfer_server_arn" {
    value = aws_transfer_server.sftp.arn
  
}


output "aws_transfer_server_id" {
    value = aws_transfer_server.sftp.id
  
}

output "aws_transfer_server_endpoint" {
    value = aws_transfer_server.sftp.endpoint
  
}

output "public_key_pem" {
    value = tls_private_key.rsa.public_key_pem 
}