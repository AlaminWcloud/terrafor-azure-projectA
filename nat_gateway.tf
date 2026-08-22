resource "azurerm_public_ip" "nat_gateway_ip" {
  name                = "natgwip-projectA-dev-uks-001"
  location            = azurerm_resource_group.rg-projectA-dev-uks-001.location
  resource_group_name = azurerm_resource_group.rg-projectA-dev-uks-001.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_nat_gateway" "nat_gatway" {
  name                = "natgw-projectA-dev-uks-001"
  location            = azurerm_resource_group.rg-projectA-dev-uks-001.location
  resource_group_name = azurerm_resource_group.rg-projectA-dev-uks-001.name
  sku_name            = "Standard"
}

resource "azurerm_nat_gateway_public_ip_association" "natgw_ip_asso" {
  nat_gateway_id       = azurerm_nat_gateway.nat_gatway.id
  public_ip_address_id = azurerm_public_ip.nat_gateway_ip.id
}
resource "azurerm_subnet_nat_gateway_association" "natgw_vm_subnet" {
  subnet_id      = azurerm_subnet.Vm-subnet
  nat_gateway_id = azurerm_nat_gateway.nat_gatway.id
}