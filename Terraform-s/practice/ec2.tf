resource "aws_instance" "servers" {
    ami = data.aws_ami.aws-info.image_id
    instance_type = var.instance_type
    count = 1
    tags = {
        Name = "web"
    }
  
}