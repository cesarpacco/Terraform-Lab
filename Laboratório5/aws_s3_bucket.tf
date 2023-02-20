resource "aws_s3_bucket" "mybucket" {

    bucket = "cap-my-bucket"
    tags = {
        "environment" = "dev"
    }
}