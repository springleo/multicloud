output "azure_storage_account_url" {
  value = var.is_azure_enabled ? module.azure_storage.storage_account_name : "No Azure storage account created"
}
