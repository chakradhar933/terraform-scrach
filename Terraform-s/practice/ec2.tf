resource "aws_instance" "server" {
    ami = data.aws_ami.ami-info.image_id
    instance_type = var.instance_type
    #count = 1
    security_groups = [data.aws_security_group.sg-info.id]
    tags = {
        Name = "web"
    }
  
}

# resource "aws_security_group" "hai" {
#   name        = "hai-1"
#   description = "Allow TLS inbound traffic"

#   ingress {
#     description      = "TCP "
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     #cidr_blocks      = [aws_vpc.main.cidr_block]
#     #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "hai"
#   }
# }