provider "azurerm" {
  features {}
  skip_provider_registration = true
  use_cli = false
  use_msi = false
  use_oidc = false  # Explicitly disable OIDC
  subscription_id = "97ceb8b2-62ab-4c5d-aa68-d0a23f2fd59b"
}

data "azurerm_resource_group" "test" {
  name = "test-resource-group"
}

output "resource_group_details" {
  value = data.azurerm_resource_group.test
}

