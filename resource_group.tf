resource "azurerm_resource_group" "rg-projectA-dev-uks-001" {
  name     = var.rescource_group_name
  location = var.location

  tags = {
    "name"       = "projectA"
    "enviroment" = "dev" 
  }
}