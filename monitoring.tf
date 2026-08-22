resource "azurerm_monitor_diagnostic_setting" "diagnotic_settings" {
  name               = "linux-vm-diagnostics"
  target_resource_id = azurerm_linux_virtual_machine.vm-linux-dev-uks-001.id
  storage_account_id = azurerm_storage_account.storage_account.id
#   enabled_log {
#     category = "AuditEvent"
#   }

  enabled_metric {
    category = "AllMetrics"
  }
}