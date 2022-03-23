provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
#variable "ec2_instance_type" {}
#variable "ami_id" {}
#resource "aws_instance" "temp1" {
  #ami           = var.ami_id
  #instance_type = var.ec2_instance_type

  #tags = {
    #Name = "devwebInstance"
  #}
#}
#resource "aws_launch_template" "foobar" {
  #name_prefix   = "foobar"
  #image_id      = "ami-1a2b3c"
  #instance_type = "t2.micro"
#}

