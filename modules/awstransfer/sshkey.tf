resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}