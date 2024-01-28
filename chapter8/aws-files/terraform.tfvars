subnet_name = "Terraform-aws-subnet"
vpc_name    = "Terraform-aws-vpc"
cidr_block  = "10.0.0.0/16"
region      = "us-east-2"
custom_tags = { Name = "s3-bucket", Environment = "development", owner = "Neko" }
bucket_name = "terraform-s3-bucket-test-01"

