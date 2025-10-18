resource "azuread_group" "dev_team" {
  display_name     = "DevTeam"
  security_enabled = true
}

resource "azuread_group_member" "dev_user_member" {
    group_object_id = azuread_group.dev_team.object_id
    member_object_id = azuread_user.dev_user.object_id
}

resource "azuread_group" "prod_team" {
  display_name     = "ProdTeam"
  security_enabled = true
}

resource "azuread_group_member" "prod_user_member" {
    group_object_id = azuread_group.prod_team.object_id
    member_object_id = azuread_user.prod_user.object_id
}

output "dev_group_id" {
    value = azuread_group.dev_team.id
}
output "prod_group_id" {
    value = azuread_group.prod_team.id
}