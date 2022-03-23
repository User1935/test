module "azurecvt_naming" {
  source       = "./../azurecvt_naming"
  name         = var.name
  businessunit = var.businessunit
  environment  = var.environment
  postfix      = var.postfix
  convention   = var.convention
  type         = "rg"
}

resource "azurerm_resource_group" "resourcegroup" {
  name     = module.azurecvt_naming.rg
  location = var.location
  tags     = var.tags
}
