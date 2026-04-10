variable "dev_vm_name" {
    description = "Name of the virtual machine"
    type        = string
}

variable "rg_name" {
    description = "Name of the resource group"
    type        = string
}

variable "location" {
    description = "Azure region for the resources"
    type        = string
}

variable "vm_size" {
    description = "Size of the virtual machine"
    type        = string
}

variable "admin_username" {
    description = "Admin username for the virtual machine"
    type        = string
}

variable "admin_password" {
    description = "Admin password for the virtual machine"
    type        = string
}

variable "nic_id" {
    description = "ID of the network interface to attach to the VM"
    type        = string
}