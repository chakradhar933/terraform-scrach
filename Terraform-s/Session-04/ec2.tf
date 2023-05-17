resource "aws_instance" "Timing" {

    ami = data.aws_ami.aws_info.image_id #AMI ID will be different every region, this is OS
    instance_type = "t3.micro"
}