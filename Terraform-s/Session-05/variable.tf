variable "instances" {
    type = list
    default = ["web-server","app-server"," db-server"]
}

variable "is_test" {
    type = bool
    default = true 
}

variable "servers" {
    type = map
    default = {
        "web-server" = "t3.micro"
        "app-server" = "t3.medium"
        "Db-server"  = "t3.large"
    }
  
}