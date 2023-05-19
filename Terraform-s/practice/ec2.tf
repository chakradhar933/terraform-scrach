resource "aws_instance" "servers" {
    ami = data.aws_ami.ami-info.image_id
    instance_type = var.instance_type
    #count = 1
    security_groups = [
    aws_security_group.servers.hai
  ]
    tags = {
        Name = "web"
    }
  
}

resource "aws_security_group" "hai" {
  name        = "hai"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS "
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    #cidr_blocks      = [aws_vpc.main.cidr_block]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "hai"
  }
}