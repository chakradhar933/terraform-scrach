variable "cidr" { #declaring variable
    type = string # declaring type
    #default = "10.0.0.0/16" # if you dont this default terraform ask at the runtime
}

variable "public_subnet_cidr" {
    type = string
}

variable "tags" {
    type = map
}