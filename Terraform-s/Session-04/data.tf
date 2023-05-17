data "aws_ami" "ami_info" {
    most_recent = true
    owners = [var.aws_accounts[data.aws_region.current.name]]

    filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*-x86_64-gp2"]
  }
  
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
# I want to fetch which region iam in . This example will fetch the info regarding current region
data "aws_region" "current" {}
output "current_region" {
    value = data.aws_region.current.name
}
