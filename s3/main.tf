provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-example"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

output "s3_bucket_arn" {
  value = "${aws_s3_bucket.terraform_state.arn}"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-example"
    key = "global/s3/terraform.tfstate"
    region = "us-east-2"
  }
}
