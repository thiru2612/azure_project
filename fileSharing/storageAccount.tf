resource "azurerm_storage_account" "file_share" {
        name = "f1lesh4r3"
        resource_group_name = azurerm_resource_group.file_rg.name
        location = azurerm_resource_group.file_rg.location
        account_tier = "Standard"
        account_replication_type = "LRS"
}

output "storage_account_name" {
    value = azurerm_storage_account.file_share.name
}