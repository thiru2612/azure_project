resource "azurerm_role_assignment" "dev_access" {
    principal_id = "${azuread_group.dev_team.object_id}"
    scope = azurerm_storage_container.dev.resource_manager_id
    role_definition_name = "Storage Blob Data Contributor"
}

resource "azurerm_role_assignment" "prod_access" {
  scope                = azurerm_storage_container.prod.resource_manager_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_group.prod_team.object_id
}

resource "azurerm_role_assignment" "dev_team_reader" {
  scope                = azurerm_storage_account.file_share.id
  role_definition_name = "Reader"
  principal_id         = azuread_group.dev_team.object_id
}

resource "azurerm_role_assignment" "prod_team_reader" {
  scope                = azurerm_storage_account.file_share.id
  role_definition_name = "Reader"
  principal_id         = azuread_group.prod_team.object_id
}

output "dev_role_assignment_id" {
    value = azurerm_role_assignment.dev_access.id
}
output "prod_role_assignment_id" {
    value = azurerm_role_assignment.prod_access.id
}