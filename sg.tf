provider "aws" {
  region     = "us-east-1"
}
#######################################################
#Creating Security
resource "aws_security_group" "jenkin_sg" {
  name = "jenkin_sg"
  description = "Allow jenkin sg inbound traffic"
  vpc_id      = "vpc-04ae9196701fd8618"
  ingress {
      from_port = 22
      to_port = 22
      protocol = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
    }
}
output "jenkin_sg_id" {
    value = aws_security_group.jenkin_sg.id
}