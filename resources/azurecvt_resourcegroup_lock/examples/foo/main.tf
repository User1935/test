module "azurecvt_resourcegroup_lock" {
  source       = "./../../../azurecvt_resourcegroup_lock"
  name         = "teste"
  businessunit = "tech"
  environment  = "prod"
  postfix      = "001"
  location     = "westeurope"
  convention   = "convatec"
  notes        = "Locked by CEG"
  tags = {
    environment = "production"
    costcentre  = "cost center"
  }
  lock_level = "CanNotDelete"
}
