resource "aws_instance" "terraform" {
    ami= "ami-096ef200a877f36af"
    instance_type= "t3.small"
    vpc_security_group_ids = [ aws_security_group.allow_all_ports.id]

    tags = {
       Name = "terraform"
       Terraform = "true"
    }   
}  

resource "aws_security_group" "allow_all_ports" {
  name= "allow_all_ports"
  
  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }
  ingress {
  from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
	}
 tags = {
 Name= "allow_all_ports"
 }
}
