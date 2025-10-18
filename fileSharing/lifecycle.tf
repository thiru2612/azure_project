resource "azurerm_storage_management_policy" "dev-container-policy" {
    storage_account_id = azurerm_storage_account.file_share.id
    rule {
        name = "dev-container-policy"
        enabled = true

        filters {
          prefix_match = [ "devcontainer/","prodcontainer/" ]
          blob_types = [ "blockBlob" ]
        }

        actions {
          base_blob {
            tier_to_cool_after_days_since_creation_greater_than = 30
            tier_to_archive_after_days_since_creation_greater_than = 90
          }
        }
    }
    
}