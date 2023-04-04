resource "azurerm_data_factory" "insight_adf" {
  name                = var.df_name
  location            = var.location
  resource_group_name = var.resource_group_name

  # Enable Managed Identity
  identity {
    type = "SystemAssigned"
  }

}


# CREATE: Data Factory IR
# resource "azurerm_data_factory_integration_runtime_self_hosted" "example" {
#   name                = "shir-${azurerm_data_factory.insight_adf.name}"
#   resource_group_name = "var.resource_group_name"
#   data_factory_name   = "var.df_name"
# }

# #UPDATE: Adding Access Policy for Azure Data Factory
# resource "azurerm_key_vault_access_policy" "data_factory" {

#  key_vault_id = azurerm_key_vault.insight_adf.id

#  tenant_id = data.azurerm_client_config.current.tenant_id
#  object_id = azurerm_data_factory.insight_adf.identity.0.principal_id

#  secret_permissions = [
#    "get",
#    "list"
#  ]
# }
