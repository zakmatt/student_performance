output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = module.s3.bucket_name
}

output "rds_db_instance_identifier" {
  description = "The RDS instance identifier"
  value       = module.rds.db_instance_identifier
}

output "rds_db_instance_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = module.rds.db_instance_endpoint
}