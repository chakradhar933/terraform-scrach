data "aws_ami" "ami-info" {
    most_recent = true
    owners = ["137112412989"]
    filter {
      name = "name"
      values = ["amzn2-ami-*-x86_64-gp2"]
    }
    filter {
        name = "virtulization-type"
        values = ["hvm"]

    }
}