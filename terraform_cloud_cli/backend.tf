terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.26.0"
    }
  }


  backend "remote" {
    organization = "josecitoCompany"

    workspaces {
      name = "terragit"
    }
  }
}

provider "aws" {
  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key
  region     = var.region
}
