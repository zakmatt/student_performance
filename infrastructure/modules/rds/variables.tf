variable "rds_name" {
  description = "Name of the rds"
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
  default     = 20
}

variable "engine_version" {
  description = "The database engine version"
  type        = string
  default     = "16.3"
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydb"
}

variable "username" {
  description = "The username for the database"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "The password for the database"
  type        = string
  default     = "admin123"
}

variable "vpc_security_group_ids" {
  description = "The VPC security group IDs"
  type        = string
  default     = ""
}

variable "db_subnet_group_name" {
  description = "The subnet group name for the database"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}

variable "blue_green_update_enabled" {
  description = "Enable low-downtime updates with blue/green deployment"
  type        = bool
  default     = false
}