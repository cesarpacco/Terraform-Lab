resource "aws_s3_bucket" "mybucket" {
  for_each = var.bucket_name
  bucket = each.value

  tags = {
    "environment" = each.key
  }
}


/* PRIMEIRO EXERCICIO FOR_EACH
 resource "aws_s3_bucket" "mybucket" {
  for_each = toset(var.bucket_name)
  bucket = each.key
  tags = {
    "environment" = "dev"
  }
}  */