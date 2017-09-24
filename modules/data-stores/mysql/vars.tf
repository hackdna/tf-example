variable "db_instance_type" {
  description = "The type of RDS instances to run (e.g. db.t2.micro)"
}

variable "db_name" {
  description = "Name of the database"
}

variable "db_storage_size" {
  description = "Database storage size in GB"
}

variable "db_password" {
  description = "The password for the database"
}
// export TF_VAR_db_password="(YOUR_DB_PASSWORD)"
