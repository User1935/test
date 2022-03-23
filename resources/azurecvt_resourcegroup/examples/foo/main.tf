module "azurecvt_resourcegroup_lock" {
  source       = "./../../../azurecvt_resourcegroup_lock"
  name         = "teste"
  businessunit = "tech"
  environment  = "prod"
  postfix      = "001"
  location     = "westeurope"
  convention   = "convatec"
  tags = {
    environment = "production"
    costcentre  = "cost center"
  }
}
