# our requirement is to create 3 instances name it as web-server,app-server,DB-server.
resource "aws_instance" "web"{

    ami = "ami-06a0cd9728546d178" #AMI ID will be different every region, this is OS
    instance_type = "t3.micro"
    count = 3
    tags = {
        name = var.instances[count.index] # index always starts with 0
    }
}
