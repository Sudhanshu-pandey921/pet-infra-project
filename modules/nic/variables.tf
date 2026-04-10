variable "nic_name" {
    description = "Name of the network interface"
    type        = string
}

variable "location" {
    description = "Azure region for the resources"
    type        = string
}

variable "rg_name" {
    description = "Name of the resource group"
    type        = string
}

variable "subnet_id" {
    description = "ID of the subnet to which the NIC will be attached"
    type        = string
}

variable "pip_id" {
    description = "ID of the public IP to associate with the NIC"
    type        = string
}

