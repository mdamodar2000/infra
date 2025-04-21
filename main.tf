provider "aws" {
region = "us-east-1"
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "PRACTICE_123_MODEL"

    workspaces {
      name = "infra"
    }
  }
}

resource "aws_instance" "three" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
}
