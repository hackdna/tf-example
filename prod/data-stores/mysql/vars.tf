variable "aws_region" {
  description = "The AWS region to use"
  default     = "us-east-2"
}

variable "db_password" {
  description = "The password for the database"
}
// export TF_VAR_db_password="(YOUR_DB_PASSWORD)"
