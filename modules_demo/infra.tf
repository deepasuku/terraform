#ec2_instance_type = "t2.micro"

variable ami_id {
    default = "ami-0c02fb55956c7d316"
}
#availability_zones = ["us-east-1c","us-east-1a","us-east-1b"]
#desired_capacity = "1"


#us-east-1
module dev_ec2 {
    source      = "./modules/ec2"
    ami_id = var.ami_id
    ec2_instance_type = "t2.micro"
    tagname = "dev-appserver"
}

#module dev_ec2_webserver {
#    source      = "./modules/ec2"
###    ami_id = var.ami_id
#    ec2_instance_type = "t2.micro"
#    tagname = "dev-webserver"
#}

module stg_ec2_webserver {
    source      = "./modules/ec2"
    ami_id = var.ami_id
    ec2_instance_type = "t3.micro"
    tagname = "stg-webserver"
}