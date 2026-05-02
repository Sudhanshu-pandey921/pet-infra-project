module "rg" {
    source = "../../modules/rg"
    for_each = var.rg_names

    rg_name = each.value.name
    location = each.value.location
}

module "vnet" {
    source = "../../modules/vnet"
    for_each = var.vnet_names

    vnet_name = each.value.vnet_name
    vnet_address_space = each.value.address_space
    location = each.value.location
    rg_name = module.rg[each.value.rg_key].rg_name
    depends_on = [ module.rg ]
}

module "subnet" {
    source = "../../modules/subnet"
    for_each = var.subnet_names

    subnet_name = each.value.name
    subnet_address_prefixes = each.value.subnet_address_prefixes   
    rg_name = module.rg[each.value.rg_key].rg_name
    vnet_name = module.vnet[each.value.vnet_key].vnet_name
    depends_on = [ module.rg, module.vnet ]
}

module "nsg" {
    source = "../../modules/nsg"
    for_each = var.nsg_names

    nsg_name = each.value.name
    location = each.value.location
    rg_name = module.rg[each.value.rg_key].rg_name
    depends_on = [ module.rg ]
}


module "nsg_association" {
    source = "../../modules/nsg_association"
    for_each = var.nsg_association_names
    subnet_id = module.subnet[each.value.subnet_key].subnet_id
    nsg_id = module.nsg[each.value.nsg_key].nsg_id
    depends_on = [ module.subnet, module.nsg ]

}




module "pip" {
    source = "../../modules/public_ip"
    for_each = var.public_ip_names

    public_ip_name = each.value.name
    location = each.value.location
    rg_name = module.rg[each.value.rg_key].rg_name
        depends_on = [ module.rg ]
}

module "nic" {
    source = "../../modules/nic"
    for_each = var.nic_names

    nic_name = each.value.name
    location = each.value.location
    rg_name = module.rg[each.value.rg_key].rg_name
    subnet_id = module.subnet[each.value.subnet_key].subnet_id
    pip_id = each.value.public_ip_key != null ? module.pip[each.value.public_ip_key].pip_id : null
    depends_on = [ module.rg, module.vnet, module.subnet, module.pip ]
}

module "vm" {

    source = "../../modules/vm"
    for_each = var.vm_names

    dev_vm_name = each.value.dev_vm_name
    location = each.value.location
    rg_name = module.rg[each.value.rg_key].rg_name
    vm_size = each.value.vm_size
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
    nic_id = module.nic[each.value.nic_key].nic_id
    depends_on = [ module.rg, module.vnet, module.subnet, module.pip, module.nic ]
}






