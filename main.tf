provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "three" {
  ami           = "ami-0e2c8caa4b6378d8c"
  COUNT = 2
  instance_type = "t2.micro"
  tags = {
    Name = "dev-server"
  }
}
