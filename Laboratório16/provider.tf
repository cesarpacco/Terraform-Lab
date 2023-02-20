provider "aws" {
  region     = lookup(var.aws_region, local.env)
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}