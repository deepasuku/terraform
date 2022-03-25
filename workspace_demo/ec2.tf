variable ami_id  {}
variable ec2_instance_type {}

resource "aws_instance" "temp1" {
  ami           = var.ami_id
  instance_type = var.ec2_instance_type
  tags = {
    Name = "webInstance"
    Env = terraform.workspace
  }
}