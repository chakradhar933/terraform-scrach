resource "aws_lb" "alb" {
  name               = "edstem"
  internal           = var.internet
  load_balancer_type = var.lb_type
  #security_groups    = [aws_security_group.lb_sg.id]
  #subnets            = [for subnet in aws_subnet.public : subnet.id]

  enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}