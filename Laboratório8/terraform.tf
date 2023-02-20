terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30.0"
    }
  }
  backend "s3" {
    bucket = "empresax1-terraform-state"
    key = "dev/bank/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock-state"
  }
}