resource "aws_instance" "Timing" {

    ami = data.aws_ami.ami_info.image_id #AMI ID will be different every region, this is OS
    instance_type = "t3.micro"
    key_name = aws_key_pair.Terraform.key_name
}
resource "aws_key_pair" "Terraform" {
  key_name   = "Terraform"
  # This file function can read the terraform123.pub and then fetch the content.
  public_key = file("${path.module}/terraform123.pub")
}