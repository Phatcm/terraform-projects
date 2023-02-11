# create database subnet group
# terraform aws db subnet group
resource "aws_db_subnet_group" "database_subnet_group" {
  name         = "database subnet"
  subnet_ids   = [aws_subnet.private_data_subnet_az1.id, aws_subnet.private_data_subnet_az2.id]
  description  = "subnet for database instance"

  tags   = {
    Name = "database subnet"
  }
}

/*
# get the latest db snapshot
# terraform aws data db snapshot
data "aws_db_snapshot" "latest_db_snapshot" {
  db_snapshot_identifier = 
  most_recent            = 
  snapshot_type          = 
}

# create database instance restored from db snapshots
# terraform aws db instance
resource "aws_db_instance" "database_instance" {
  instance_class          = 
  skip_final_snapshot     = 
  availability_zone       = 
  identifier              = 
  snapshot_identifier     = 
  db_subnet_group_name    = 
  multi_az                = 
  vpc_security_group_ids  = 
}
*/

# create the rds instance
# terraform aws db instance
resource "aws_db_instance" "database_instance" {
  engine                  = var.database_instance_engine
  engine_version          = var.database_instance_engine_version
  multi_az                = var.multi_az_deployment
  identifier              = var.database_instance_identifier
  username                = var.database_login_username
  password                = var.database_login_password
  instance_class          = var.database_instance_class_identifier
  allocated_storage       = 200
  db_subnet_group_name    = aws_db_subnet_group.database_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.database_security_group.id]
  availability_zone       = "ap-northeast-1c"
  db_name                 = var.database_name
  skip_final_snapshot     = true
}