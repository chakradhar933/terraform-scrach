output "ip_address" {
    value = aws_instance.Timing.public_ip
}
output "instance-state" {
    value = aws_instance.Timing.instance_state
}
output "private-dns" {
    value = aws_instance.Timing.private_dns
}
output "public-dns" {
    value = aws_instance.Timing.public_dns
}
output "arn-details" {
    value = aws_instance.Timing.arn
}
output "ami_id" {
    value = data.aws_ami.ami-info.image_id
}