variable "instances" {
    type = list
    default = ["web-server","app-server"," db-server"]
}

variable "is_test" {
    type = bool
    default = true
  
}