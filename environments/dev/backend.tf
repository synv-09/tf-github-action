terraform {
  required_version = ">= 1.6.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.20.0"
    }
  }

  backend "s3" {
    profile        = "synv-dev"
    bucket         = "synv-dev-iac-state"
    key            = "1.general/terraform.dev.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "synv-dev-terraform-state-lock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.region

  default_tags {
    tags = {
      Project     = var.project
      Environment = var.env
    }
  }
}
