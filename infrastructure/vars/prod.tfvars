aws_region = "eu-west-1"

s3_bucket_name = "prod-student-performance-model-storage-bucket"

rds_allocated_storage = 20
rds_engine_version    = "16.3"
rds_instance_class    = "db.t3.micro"
rds_db_name           = "proddb"
rds_username          = "prodadmin"
rds_password          = "prodpassword123"

tags = {
  Environment = "prod"
  Project     = "student-performance-prediction"
}