output "ip_address" {
    value = aws_instance.server.public_ip
}

output "ami_id" {
    value = aws_instance.server.ami
}