resource "azurerm_resource_group" "rg_projectA_dev_uks_001" {
  name     = var.rescource_group_name
  location = var.location

  tags = {
    "name"       = "projectA"
    "enviroment" = "dev" 
  }
}