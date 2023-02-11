#VPC variables
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
}

#public_subnet_az1 variables
variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
}

#public_subnet_az2 variables
variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
}

#private app subnet az1 variables
variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"
  type          = string
}

#private app subnet az2 variables
variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"
  type          = string
}

#private data subnet az1 variables
variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"
  type          = string
}

#private data subnet az2 variables
variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"
  type          = string
}

#Security Group values

#ssh location
variable "ssh_location" {
  default       = "0.0.0.0/0"
  description   = "the ip address that can access into the ec2 instances"
  type          = string
}

#RDS variables

variable "database_instance_engine" {
  default       = "mysql"
  description   = "the database engine identifier"
  type          = string
}

variable "database_instance_engine_version" {
  default       = "8.0.31"
  description   = "the database engine version identifier"
  type          = string
}

variable "multi_az_deployment" {
  default       = "false"
  description   = "create a stand by instances"
  type          = bool
}

variable "database_instance_identifier" {
  default       = "dev-rds-instances"
  description   = "the database instance identifier"
  type          = string
}

variable "database_instance_class_identifier" {
  default       = "db.t2.micro"
  description   = "the type instance class identifier"
  type          = string
}

variable "database_login_username" {
  default       = "admin"
  description   = "the database username identifier"
  type          = string
}

variable "database_login_password" {
  default       = "admin243278"
  description   = "the database password identifier"
  type          = string
}

variable "database_name" {
  default       = "applicationdb"
  description   = "the database name identifier"
  type          = string
}

# ALB variables

variable "ssl_certificate_arn" {
  default       = ""
  description   = "the database name identifier"
  type          = string
}