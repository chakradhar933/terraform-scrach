data "aws_ami" "ami-info" {
    most_recent = true
    owners = ["137112412989"]
    filter {
      name = "name"
      values = ["amzn2-ami-*-x86_64-gp2"]
    }
    filter {
      name = "virtualization-type"
      values = ["hvm"]

    }
}

data "aws_security_group" "sg-info" {
  #most_recent = true
    id = "sg-0a503ad03d588dfc4"
    filter {
      name = "name"
      values = ["default"]
    }
}