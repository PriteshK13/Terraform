variable "vpc_id" {
    description = "VPC ID for subnet"
    type = string
}

variable "subnet_cidr" {
    description = "CIDR block for subnet"
    type = string
}

variable "subnet_name" {
    description = "Name of subnet"
    type = string
}

variable "route_table_id" {
    description = "Route table ID"
    type = string
}