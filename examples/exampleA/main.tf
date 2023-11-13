terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=5.25.0"
    }
  }
}

provider "aws" {}

module "s3-webapp" {
  source  = "app.terraform.io/nathan-lab/s3-webapp/aws"
  version = "1.0.7"
  prefix  = "test"
  name    = "test"
  region  = "us-east-1"
}
