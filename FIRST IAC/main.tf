terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "IACEC2" {
    ami = "ami-0f403e3180720dd7e"
    instance_type = "t2.micro"
    tags = {
      Name = "IAC Example"
      IAC = "My first Infrastructure as Code"
    }
}
