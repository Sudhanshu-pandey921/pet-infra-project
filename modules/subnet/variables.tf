variable "subnet_name" {
    description = "Name of the subnet"
    type        = string
}

variable "subnet_address_prefixes" {
    description = "Address prefixes for the subnet"
    type        = list(string)
}

variable "rg_name" {
    description = "Name of the resource group where the subnet will be created"
    type        = string
}

variable "vnet_name" {
    description = "Name of the virtual network to which the subnet belongs"
    type        = string
}