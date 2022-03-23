
module "azurecvt_resourcegroup" {
  source       = "./../azurecvt_resourcegroup"
  name         = var.name
  location     = var.location
  businessunit = var.businessunit
  environment  = var.environment
  postfix      = var.postfix
  convention   = var.convention
  tags         = var.tags
}

resource "azurerm_management_lock" "resourcegroup_levellock" {
  count      = var.lock_level == "" ? 0 : 1
  name       = var.lock_name
  scope      = module.azurecvt_resourcegroup.id
  lock_level = var.lock_level
  notes      = var.notes
  depends_on = [
    module.azurecvt_resourcegroup
  ]
}
