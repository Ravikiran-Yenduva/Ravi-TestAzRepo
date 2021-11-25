resource "azurerm_app_service_plan" "appplan" {
  name                = var.appplan_name
  location            = var.location
  resource_group_name = var.rg_name
  # kind                = "Linux"
  # reserved            = true
  sku {
    tier = "Standard"
    size = "S1"
  }
}
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  location                 = var.location
  resource_group_name      = var.rg_name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_function_app" "function" {
  name                       = var.function_name
  location                   = var.location
  resource_group_name        = var.rg_name
  app_service_plan_id        = azurerm_app_service_plan.appplan.id
  storage_account_name       = azurerm_storage_account.sa.name
  storage_account_access_key = azurerm_storage_account.sa.primary_access_key
  #os_type                    = "linux"
  app_settings = {
  "FUNCTIONS_WORKER_RUNTIME" = "java"
  "WEBSITE_RUN_FROM_PACKAGE" = "1"
}
site_config {
  java_version = "11"
}

}
