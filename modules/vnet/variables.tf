variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
}

variable "location" {
  description = "Azure region for the virtual network"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group where the virtual network will be created"
  type        = string
}