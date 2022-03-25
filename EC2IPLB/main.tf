provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_instance" "temp1" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    associate_public_ip_address =  true

  user_data = <<-EOF
  #!/bin/bash -xe
	yum intall httpd -y
	systemctl start httpd
  EOF
  tags = {
    Name = "devwebInstance"
  }
}
resource "aws_instance" "temp2" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    associate_public_ip_address =  true

  user_data = <<-EOF
  #!/bin/bash -xe
	yum intall httpd -y
	systemctl start httpd
  EOF
  tags = {
    Name = "prodwebInstance"
  }
}