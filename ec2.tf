#Creating EC2 instance
provider "aws" {
  region     = "us-east-1"
}
resource "aws_instance" "EC2J" {
 ami = "ami-007855ac798b5175e"
 instance_type = "t2.micro"
 key_name = "N.virginia"
 security_groups = ["sg-0e82ea59b182012ca"]
 subnet_id = "subnet-0d1ed53e48b93edab"
 associate_public_ip_address = "true"
 tags = {
  Name = "EC2J"
 }
}
