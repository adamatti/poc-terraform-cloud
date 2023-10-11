terraform {
  cloud {
    organization = "adamatti"
    workspaces {
      tags = ["poc-terraform-cloud"]
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token      = var.aws_session_token

  default_tags {
    tags = {
      environment = "staging"
      owner       = "marcelo-adamatti"
    }
  }
}
