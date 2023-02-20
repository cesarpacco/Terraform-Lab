resource "aws_s3_bucket" "mybucket05" {
  bucket = "${local.prefix_bucket}-mybucket05"
  tags = {
    environment = "dev"
  }
}

resource "aws_s3_bucket" "mybucket06" {
  bucket = "${local.prefix_bucket}-mybucket-06"
  tags = {
    "environment" = "dev"
  }
}
