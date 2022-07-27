resource "aws_s3_bucket" "client" {
  bucket        = "${local.product_information.context.project}_${local.product_information.context.service}"
  force_destroy = true
  tags          = local.tags
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.client.id
  acl    = "private"
}
