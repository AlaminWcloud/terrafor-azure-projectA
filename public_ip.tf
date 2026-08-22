resource "azurerm_public_ip" "bastion_ip" {
  name                = "bastion_ip-projectA-dev-uks-001"
  location            = azurerm_resource_group.rg-projectA-dev-uks-001.location
  resource_group_name = azurerm_resource_group.rg-projectA-dev-uks-001.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

