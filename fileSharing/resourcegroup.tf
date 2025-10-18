resource "azurerm_resource_group" "file_rg" {
    location = var.location
    name = "file-rg"
}
output "resource_group_name" {
    value = azurerm_resource_group.file_rg.name
}