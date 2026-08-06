
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location

}
resource "azurerm_storage_account" "storage_account" {
  name                            = var.storage_account_name
  resource_group_name             = azurerm_resource_group.resource_group.name
  location                        = azurerm_resource_group.resource_group.location
  account_tier                    = var.account_tier
  account_replication_type        = var.account_replication_type
  account_kind                    = var.account_kind
  public_network_access_enabled   = var.public_network_access_enabled
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  shared_access_key_enabled       = var.shared_access_key_enabled
  min_tls_version                 = var.min_tls_version
  https_traffic_only_enabled      = var.https_traffic_only_enabled
  tags                            = var.tags

  #Added when Module 24 was created. Kerberos is added so FSLogix can be accessed

  azure_files_authentication {
    directory_type                 = "AADKERB"
    default_share_level_permission = "None"
  }
}
resource "azurerm_storage_container" "blob_container" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.storage_account.id
  container_access_type = var.container_access_type

}

