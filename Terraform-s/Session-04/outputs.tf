output "ip_address" {
    value = aws_instance.Timing.public_ip
}
output "instance-state" {
    value = aws_instance.Timing.instance_state
}