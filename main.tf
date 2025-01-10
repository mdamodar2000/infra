provider "aws" {
region = "us-east-1"
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "demow2d2fd2e2vv2rev"

    workspaces {
      name = "infra"
    }
  }
}

resource "aws_instance" "three" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
}
