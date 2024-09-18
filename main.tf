terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0a0e5d9c7acc336f1"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0ef884acbd166c8c4"
  security_groups = ["sg-053dcc6ba867a0c29"]

  tags = {
    Name = var.instance_name
  }
}

