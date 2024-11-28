output azure_sa_name {
  value = var.is_azure_enabled ? azurerm_storage_account.storage[0].name : "No Azure SA created"
}