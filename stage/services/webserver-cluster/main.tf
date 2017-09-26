provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name = "webservers-stage"
  db_remote_state_bucket = "terraform-state-example"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size = 2
  max_size = 2
  enable_autoscaling = false
  enable_new_user_data = true
}

terraform {
  backend "s3" {
    bucket = "terraform-state-example"
    key = "stage/services/webserver-cluster/terraform.tfstate"
    region = "us-east-2"
  }
}
