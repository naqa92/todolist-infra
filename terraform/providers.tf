terraform {
  required_version = ">= 1.13.0"

  backend "s3" {
    bucket       = "todolist-infra"
    key          = "todolist/terraform.tfstate"
    region       = "eu-west-3"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.95"
    }
  }
}

provider "aws" {
  region = var.region
}