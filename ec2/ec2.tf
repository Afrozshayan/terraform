resource "aws_instance" "terraform" {
    ami= "ami-096ef200a877f36af"
    instance_type= "t3.small"

    tags = {
       Name = "terraform"
       Terraform = "true"
    }   
  
}  