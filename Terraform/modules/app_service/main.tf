resource "azurerm_linux_web_app" "app" {
  name                = var.app_service_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  service_plan_id     = var.app_service_plan_id

  site_config {
    always_on = false
  }
}
