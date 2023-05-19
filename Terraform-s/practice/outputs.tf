output "ip_address" {
    value = aws_instance.servers.public_ip
}

output "ami_id" {
    value = aws_instance.servers.ami
}