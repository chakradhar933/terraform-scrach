resource "aws_instance" "servers" {
    ami = "ami-06a0cd9728546d178"
    instance_type = var.instance_type
    tags = {
        Name = "web"
    }
  
}