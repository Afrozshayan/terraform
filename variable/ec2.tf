resource "aws_instance" "terraform" {
    ami= var.ami-id
    instance_type= var.instance_type
    vpc_security_group_ids = [ aws_security_group.allow_all_ports.id]

    tags = var.ec2_tags
}
resource "aws_security_group" "allow_all_ports" {
  name= "allow_all_ports"
  
  egress {
    from_port        = var.egress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.egress_to_port
    protocol         = var.egress_protocol # -1 means all protocols
    cidr_blocks      = var.cidr_blocks # internet
  }
  ingress {
  from_port        = var.ingress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.ingress_to_port 
    protocol         = var.ingress_protocol # -1 means all protocols
    cidr_blocks      = var.cidr_blocks # internet
	}
 tags = {
 Name= "allow_all_ports"
 }
}
