variable "aws_accounts" {
    type = map
    default = {
        "us-east-2" = "137112412989"
        "us-east-1" = "137112412989"
        "ap-south-2" = "137112412989"
    }
}

#how you get value from map
# map_name("key")
# aws_accounts["ap-south-1"]