provider "aws" {
  region = "${var.aws_region}"
}

module "database" {
  source = "../../../modules/data-stores/mysql"

  db_instance_type = "db.t2.micro"
  db_name          = "example_database"
  db_storage_size  = 10
  db_password      = "${var.db_password}"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-example"
    key    = "stage/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"
  }
}
