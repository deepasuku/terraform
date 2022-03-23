variable "availability_zones" {}
variable "desired_capacity" {}
variable "max_size" {}
variable "min_size" {}
variable "ami_id" {}
variable "ec2_instance_type" {}

resource "aws_launch_template" "temp1" {
  name_prefix   = "lt-"
  image_id      = var.ami_id
  instance_type = var.ec2_instance_type
}

resource "aws_autoscaling_group" "group1" {
  availability_zones = var.availability_zones
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  launch_template {
    id      = aws_launch_template.temp1.id
    version = "$Latest"
  }
}