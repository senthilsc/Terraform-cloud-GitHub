terraform {
    required_version = "~> 1.0.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-west-1" 
        profile = "default"
	}

resource "aws_instance" "tfCICDinstance" {
	ami = "ami-0dc2d3e4c0f9ebd18" 
  # count = 3
	instance_type = "t2.micro"
}
