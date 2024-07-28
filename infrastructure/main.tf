terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket  = "tf-state-student-performance"
    key     = "student-performance-stg.tfstate"
    region  = var.aws_region
    encrypt = true
  }
}

provider "aws" {
  region = var.aws_region
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.s3_bucket_name
  tags        = var.tags
}

module "rds" {
  source = "./modules/rds"

  allocated_storage    = var.rds_allocated_storage
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  rds_name              = var.rds_db_name
  username             = var.rds_username
  password             = var.rds_password
  vpc_security_group_ids = var.rds_vpc_security_group_ids
  db_subnet_group_name = var.rds_db_subnet_group_name
  tags                 = var.tags
  blue_green_update_enabled = var.blue_green_update_enabled
}