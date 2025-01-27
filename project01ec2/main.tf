terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0ac4dfaf1c5c0cce9"
  instance_type = "t3.medium"
  count = "3"

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

