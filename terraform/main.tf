# Configure the Azure provider
provider "azurerm" {
  features {}
}

# Create the resource group
resource "azurerm_resource_group" "appRG" {
  name     = "paps-rg"
  location = "West Europe"
}

# Create the Linux App Service Plan
resource "azurerm_app_service_plan" "appServicePlan" {
  name                = "paps-svc-plan"
  location            = azurerm_resource_group.appRG.location
  resource_group_name = azurerm_resource_group.appRG.name
  sku {
    tier = "Free"
    size = "F1"
  }
}

# Create the web app
resource "azurerm_app_service" "webApp" {
  name                = "webApp-paps"
  location            = azurerm_resource_group.appRG.location
  resource_group_name = azurerm_resource_group.appRG.name
  app_service_plan_id = azurerm_app_service_plan.appServicePlan.id
}
