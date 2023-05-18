output "ip_address" {
    value = aws_instance.servers.public_ip
}