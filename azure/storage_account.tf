resource "azurerm_resource_group" "rg" {
  count = var.is_azure_enabled == true ? 1 : 0
  name     = var.resource_group
  location = var.azure_location
}

resource "azurerm_storage_account" "storage" {
  count = var.is_azure_enabled == true ? 1 : 0
  name                     = var.storage_name
  resource_group_name      = azurerm_resource_group.rg[0].name
  location                 = azurerm_resource_group.rg[0].location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "Multi-Cloud"
    ManagedBy   = "Terraform"
  }
}

