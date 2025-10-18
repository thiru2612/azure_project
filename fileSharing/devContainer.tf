resource "azurerm_storage_container" "dev" {
    name = "devcontainer"
    storage_account_name = azurerm_storage_account.file_share.name
}

output "dev_container_name" {
    value = azurerm_storage_container.dev.name
}
