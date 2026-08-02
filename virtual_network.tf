resource "azurerm_virtual_network" "vnet-project-dev-uks-001" {
    name = var.virtual_network_name
    resource_group_name = var.rescource_group_name
    location = var.location
    address_space = var.address_space

    subnet {
        name = "Vm-subnet"
        address_prefixes = var.address_prefixes
    }
  
}