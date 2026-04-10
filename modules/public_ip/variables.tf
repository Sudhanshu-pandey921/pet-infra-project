variable "public_ip_name" {
    description = "Name of the public IP address"
    type        = string
}

variable "location" {
    description = "Azure region where the public IP will be created"
    type        = string
}

variable "rg_name" {
    description = "Name of the resource group where the public IP will be created"
    type        = string
}