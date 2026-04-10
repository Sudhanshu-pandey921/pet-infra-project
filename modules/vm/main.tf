resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.dev_vm_name
  resource_group_name = var.rg_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password = var.admin_password

  disable_password_authentication = false
  network_interface_ids = [var.nic_id]

 

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

    custom_data = base64encode(<<EOF
  #!/bin/bash
  apt update -y
  apt install openjdk-17-jdk git -y
  git clone https://github.com/spring-projects/spring-petclinic.git
  cd spring-petclinic
  chmod +x mvnw
  ./mvnw package
  nohup java -jar target/*.jar > app.log 2>&1 &
  EOF
 )

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}