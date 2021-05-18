# Teraform Block
terraform {
  required_version = "~>0.14.8"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "us-east-2"
}
provider "aws" {
  region  = "us-east-2"
  profile = "default"
  alias   = "aws-east-1"
}
