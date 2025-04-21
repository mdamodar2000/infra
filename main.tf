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
  ami           = "ami-05ab12222a9f39021"
  instance_type = "t2.micro"
}
