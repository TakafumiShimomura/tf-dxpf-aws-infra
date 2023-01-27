terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    encrypt        = true
    bucket         = "shimomura-test-codebuild"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
  }
}

provider "aws" {
  region  = "ap-northeast-1"
}


resource "aws_vpc" "shimomura" {
  cidr_block           = "shimomura-test"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "shimomura"
  }
}