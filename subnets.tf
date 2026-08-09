resource "azurerm_subnet" "Vm-subnet" {
  name                 = var.linux_vm_subnet_name
  resource_group_name  = var.rescource_group_name
  virtual_network_name = azurerm_virtual_network.vnet-project-dev-uks-001.name
  address_prefixes     = var.address_prefixes
}