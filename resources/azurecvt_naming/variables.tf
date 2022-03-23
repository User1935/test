variable "name" {
  description = "input name"
}

variable "type" {
  description = "type of resource created as described in the README"
}

variable "convention" {
  description = "(Required) naming convention methode to be used"
}

variable "businessunit" {
  description = "(Required if ceg) business unit for composing resource name"
}

variable "environment" {
  description = "(Required if ceg) environment for composing resource name"
}

variable "postfix" {
  description = "(Optional) postfix to add to server name"
  default     = ""
}

variable "cvt_azlimits" {
  description = "limit for resources"
  default = {
    "asr"         = 50
    "aaa"         = 50
    "acr"         = 49
    "afw"         = 50
    "rg"          = 80 # resource group -  limited to 80 when deploying a VM. so moving from 90 to 80
    "kv"          = 24 # Key Vault
    "st"          = 24 # Storage Account
    "stdiag"      = 24 # Storage Account (VM Diagnostics)
    "vnet"        = 64
    "nsg"         = 80
    "snet"        = 80
    "nic"         = 80
    "vml"         = 64
    "vmw"         = 15
    "functionapp" = 60
    "lb"          = 80
    "lbrule"      = 80
    "evh"         = 50
    "la"          = 63
    "pip"         = 80
    "gen"         = 24
  }
}

variable "cvt_prefix" {
  description = "ConvaTec recommended prefix"
  default = {
    "asr"    = "asr-"
    "aaa"    = "aaa-"
    "acr"    = "acr"
    "afw"    = "afw-"
    "rg"     = "rg-"
    "kv"     = "kv-"
    "st"     = "st"
    "stdiag" = "stdiag"
    "vnet"   = "vnet-"
    "nsg"    = "nsg-"
    "snet"   = "snet-"
    "nic"    = "nic-"
    "vm"     = "vm-"
    "vml"    = "vm-"
    "vmw"    = "vm-"
    "lb"     = "lb"
    "evh"    = "evh-"
    "la"     = "la"
    "pip"    = "pip-"
    "gen"    = "gen"
  }
}
