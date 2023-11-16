# Create a resource group
resource "azurerm_resource_group" "resource_group" {
  name     = ""
  location = var.location

  tags = ""
}

resource "azurerm_storage_account" "storage_account" {
  name                     = ""
  resource_group_name      = azurerm_resource_group.resource_group.name // referenciado o campo de outro resource
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = ""
}

resource "azurerm_storage_container" "container" {
  name                  = ""
  storage_account_name  = azurerm_storage_account.storage_account.name
}