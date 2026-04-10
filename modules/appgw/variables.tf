variable "appgw_name" {
    description = "Name of the Application Gateway"
    type        = string
}

variable "rg_name" {
    description = "Name of the Resource Group"
    type        = string
}

variable "location" {
    description = "Azure region where the Application Gateway will be deployed"
    type        = string
}

variable "subnet_id" {
    description = "ID of the subnet where the Application Gateway will be deployed"
    type        = string
}

variable "public_ip_address_id" {
    description = "ID of the public IP address to be associated with the Application Gateway"
    type        = string
}

variable "backend_ip_addresses" {
    description = "List of backend IP addresses for the Application Gateway"
    type        = list(string)
}