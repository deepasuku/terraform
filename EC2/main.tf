provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
variable "ec2_instance_type" {}
variable "ami_id" {}
resource "aws_instance" "devweb_server" {
  ami           = var.ami_id
  instance_type = var.ec2_instance_type

  tags = {
    Name = "devwebInstance"
  }
}