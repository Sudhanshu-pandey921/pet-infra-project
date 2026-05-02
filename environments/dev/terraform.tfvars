rg_names = {
  "rg1" = {
    name = "dev-rg1"
    location = "southafricanorth"
    }
}

vnet_names = {
  "vnet1" = {
    vnet_name = "dev-vnet1"
    address_space = ["10.0.0.0/16"]
    location = "southafricanorth"
    rg_key = "rg1"
    }
  }

  subnet_names = {
    "subnet1" = {
        name = "web-subnet"
        subnet_address_prefixes = ["10.0.1.0/24"]
        rg_key = "rg1"
        vnet_key = "vnet1"
      }

      "subnet2" = {
        name = "app-subnet"
        subnet_address_prefixes = ["10.0.2.0/24"]
        rg_key = "rg1"
        vnet_key = "vnet1"
      }

    
  }

   nsg_names = {
     "nsg1" = {
        name = "web-nsg"
        location = "southafricanorth"
        rg_key = "rg1"

        rules = {
          "allow_http" = {
            priority = 100
            direction = "Inbound"
            access = "Allow"
            protocol = "Tcp"
            source_port_range = "*"
            destination_port_range = "80"
            source_address_prefix = "*"
            destination_address_prefix = "*"
          }

          "allow_ssh" = {
            priority = 110
            direction = "Inbound"
            access = "Allow"
            protocol = "Tcp"
            source_port_range = "*"
            destination_port_range = "22"
            source_address_prefix = "*"
            destination_address_prefix = "*"
          }


}
}

       "nsg2" = {
        name = "app-nsg"
        location = "southafricanorth"
        rg_key = "rg1"

        rules = {
          "allow_from_web" = {
            priority = 100
            direction = "Inbound"
            access = "Allow"
            protocol = "Tcp"
            source_port_range = "*"
            destination_port_range = "8080"
            source_address_prefix = "10.0.1.0/24"
            destination_address_prefix = "*"
          }
}
}

      
   }


   nsg_association_names = {
     "nsg_web_association" = {
        nsg_key = "nsg1"
        subnet_key = "subnet1"
       }

        "nsg_app_association" = {
          nsg_key = "nsg2"
          subnet_key = "subnet2"
        }

       
   }




public_ip_names = {
    "pip1" = {
        name = "web-pip"
        location = "southafricanorth"
        rg_key = "rg1"
        }
    }

nic_names = {
    "nic1" = {
        name = "web-nic"
        location = "southafricanorth"
        rg_key = "rg1"
        subnet_key = "subnet1"
        public_ip_key = "pip1"
        }

     "nic2" = {
        name = "app-nic"
        location = "southafricanorth"
        rg_key = "rg1"
        subnet_key = "subnet2"
        public_ip_key = null
        }

     
    }





vm_names = {
    "vm1" = {
        dev_vm_name = "dev-vm1"  
        location = "southafricanorth"
        rg_key = "rg1"
        vm_size = "Standard_B2ats_v2"
        admin_username = "azureuser"
        admin_password = "azureuser@123"
        nic_key = "nic1"
         }
        
      

    "vm2" = {
        dev_vm_name = "dev-vm2"
        location = "southafricanorth"
        rg_key = "rg1"
        vm_size = "Standard_B2ats_v2"
        admin_username = "azureuser"
        admin_password = "azureuser@123"
        nic_key = "nic2"
         }

     
}


        