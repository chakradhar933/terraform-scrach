# This file is to pass the default values.
cidr = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
public_route_cidr = "0.0.0.0/0"
tags = {
    Environment = "DEV"
    Name = "timing"
    terraform = "true"
}