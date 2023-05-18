output "ip_address" {
    value = aws_instance.web.publip_ip
}