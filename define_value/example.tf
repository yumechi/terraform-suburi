terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "example" {
  ami           = var.ubuntu2004[var.region]
  instance_type = var.instance_type
}

output "region" {
  value = var.region
}

output "ami" {
  value = aws_instance.example.ami
}
