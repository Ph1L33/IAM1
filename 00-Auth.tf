terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
   region = "eu-central-1"
}

#resource "aws_instance" "missionportal" {
  #ami           = ami-0669b163befffbdfc #Frankfurt
  #instance_type = "t2.micro"

 # tags = {
 #   Name = "Mission-Portal"
 # }
