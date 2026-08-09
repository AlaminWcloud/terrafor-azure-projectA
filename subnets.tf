resource "azurerm_subnet" "Vm-subnet" {
  name                 = var.linux_vm_subnet_name
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.vnet-projectA-dev-uks-001.name
  address_prefixes     = [var.address_prefixes[0]]
}