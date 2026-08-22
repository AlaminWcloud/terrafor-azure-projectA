resource "azurerm_managed_disk" "data_disk_1" {
  name                 = "data-disk-1"
  location             = azurerm_resource_group.rg-projectA-dev-uks-001.location
  resource_group_name  = azurerm_resource_group.rg-projectA-dev-uks-001.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "10"
}

resource "azurerm_managed_disk" "data_disk_2" {
  name                 = "data-disk-2"
  location             = azurerm_resource_group.rg-projectA-dev-uks-001.location
  resource_group_name  = azurerm_resource_group.rg-projectA-dev-uks-001.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "20"
}

resource "azurerm_virtual_machine_data_disk_attachment" "data_disk_1" {
  managed_disk_id    = azurerm_managed_disk.data-disk-1.id
  virtual_machine_id = azurerm_linux_virtual_machine.vm-linux-dev-uks-001.id
  lun                = "10"
  caching            = "ReadWrite"
}

resource "azurerm_virtual_machine_data_disk_attachment" "data_disk_2" {
  managed_disk_id    = azurerm_managed_disk.data-disk-2.id
  virtual_machine_id = azurerm_linux_virtual_machine.vm-linux-dev-uks-001.id
  lun                = "20"
  caching            = "ReadWrite"
}