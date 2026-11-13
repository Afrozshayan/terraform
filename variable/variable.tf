variable "ami-id" {
    default = "ami-096ef200a877f36af"
}

variable "instance_type" {
    default = "t3.small" 
}

variable "ec2_tags" {
    default = {
        Name = "terraform"
        Terraform = "true"
        project = "robshop"
        Environment = "dev"

    }  
}

variable "sg_group" {
    default = "allow_all_ports"
          
    }

variable "cidr_blocks" {
    default = ["0.0.0.0/0"] 
  
}

variable "egress_from_port" {
   default = "0"
}

variable "egress_to_port" {
   default = "0"
}

variable "egress_protocol" {
   default = "-1"
}


variable "ingress_from_port" {
   default = "0"
}

variable "ingress_to_port" {
   default = "0"
}

variable "ingress_protocol" {
   default = "-1"
}