resource "aws_security_group" "allow_ssh" {
  name        = "allows_${var.COMPONENT}"
  description = "Allow SSH inbound traffic"

  ingress {
    description      = "HTTP from INTERNET"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_${var.COMPONENT}"
  }
}

output "sg_id" {
    value =  aws_security_group.allow_ssh.id
}