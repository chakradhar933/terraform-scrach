resource "aws_instance" "Timing" {

    ami = "ami-06a0cd9728546d178" #AMI ID will be different every region, this is OS
    instance_type = "t3.micro"
}