resource "azurerm_network_interface" "vm-linux-nic-dev-uks-001" {
  name                = var.linux_vm_nic_name
  location            = azurerm_resource_group.rg-projectA-dev-uks-001.location
  resource_group_name = azurerm_resource_group.rg-projectA-dev-uks-001.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.Vm-subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_linux_virtual_machine" "vm-linux-dev-uks-001" {
  name                = var.linux_vm_name
  resource_group_name = azurerm_resource_group.rg-projectA-dev-uks-001.name
  location            = azurerm_resource_group.rg-projectA-dev-uks-001.location
  size                = "Standard_B2ms"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.vm-linux-nic-dev-uks-001.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("/Users/macbook/.ssh/azure_vm_key.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}