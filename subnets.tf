resource "azurerm_subnet" "Vm_subnet" {
  name                 = var.linux_vm_subnet_name
  resource_group_name  = var.rescource_group_name
  virtual_network_name = azurerm_virtual_network.vnet-project-dev-uks-001.name
  address_prefixes     = [var.address_prefixes[0]]
}
resource "azurerm_subnet" "bastion" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = var.rescource_group_name
  virtual_network_name = azurerm_linux_virtual_machine.vm-linux-dev-uks-001.name
  address_prefixes     = [var.address_prefixes[1]]
}