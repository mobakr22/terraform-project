terraform {
  backend "s3" {
  bucket = "backendtf-iti"
  key    = "terraform.tfstate"
  region = "us-east-1"
  dynamodb_table ="terraform_lock"
}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}



