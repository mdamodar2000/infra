provider "aws" {
region = "ap-south-1"
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Kundana"

    workspaces {
      name = "infra"
    }
  }
}

resource "aws_instance" "three" {
  ami           = "ami-0f1dcc636b69a6438"
  instance_type = "t2.micro"
}
