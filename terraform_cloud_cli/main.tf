terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
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
  region  = "eu-south-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0682c282a19c84de9"
  instance_type = "t3.small"

  tags = {
    Name = "josecitoejemplo"
  }
}

