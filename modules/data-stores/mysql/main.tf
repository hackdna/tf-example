resource "aws_db_instance" "example" {
  engine              = "mysql"
  allocated_storage   = "${var.db_storage_size}"
  instance_class      = "${var.db_instance_type}"
  name                = "${var.db_name}"
  username            = "admin"
  password            = "${var.db_password}"
  skip_final_snapshot = true
}
