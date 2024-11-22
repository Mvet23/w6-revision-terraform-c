terraform {
  backend "s3" {
    bucket         = "w6revision2casimir"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terra_revision2" # Table for state locking
    encrypt        = true
  }
}
