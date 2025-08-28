provider "azurerm" {
  features {}
  skip_provider_registration = true
  use_cli = false
  use_msi = false
  use_oidc = false  # Explicitly disable OIDC
  subscription_id = env("CLOUD_ACCOUNT_ID")
}

data "azurerm_resource_group" "test" {
  name = "test-resource-group"
}

output "resource_group_details" {
  value = data.azurerm_resource_group.test
}

