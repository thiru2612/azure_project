resource "azurerm_storage_container" "prod" {
    name = "prodcontainer"
    storage_account_name = azurerm_storage_account.file_share.name
}

output "prod_container_name" {
    value = azurerm_storage_container.prod.name
}