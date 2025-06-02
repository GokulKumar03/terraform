terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2"  # AWS provider version, not terraform version
    }
  }
}

provider "aws" {
  region = "us-east-1"
}