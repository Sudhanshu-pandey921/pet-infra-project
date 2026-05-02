variable "rg_names" {
    type = map(object({
        name = string
        location = string
    }))
}

variable "vnet_names" {
    type = map(object({
        vnet_name = string
        address_space = list(string)
        location = string
        rg_key = string
    }))
}

variable "subnet_names" {
    type = map(object({
        name = string
        subnet_address_prefixes = list(string)
        rg_key = string
        vnet_key = string
    }))
}

variable "nsg_names" {
    type = map(object({
        name = string
        location = string
        rg_key = string
    }))
}

variable "nsg_association_names" {
    type = map(object({
        subnet_key = string
        nsg_key = string
    }))
}

variable "public_ip_names" {
    type = map(object({
        name = string
        location = string
        rg_key = string
    }))
}

variable "nic_names" {
    type = map(object({
        name = string
        location = string
        rg_key = string
        subnet_key = string
        public_ip_key = string
    }))
}

variable "vm_names" {
    type = map(object({
        dev_vm_name = string
        location = string
        rg_key = string
        vm_size = string
        admin_username = string
        admin_password = string
        nic_key = string
    }))
}
