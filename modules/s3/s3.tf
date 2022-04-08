locals {
  name = "${var.bucket_name}-${var.environment}"
}
resource "aws_s3_bucket" "dixio" {
  bucket = local.name

  tags = merge(
    var.default_tags,
    tomap(
      {
        "Name"        = local.name,
        "environment" = "${var.environment}"
      }
    )
  )
}

resource "aws_s3_bucket_acl" "dixio" {
  bucket = aws_s3_bucket.dixio.id
  acl    = var.bucket_acl_type
}