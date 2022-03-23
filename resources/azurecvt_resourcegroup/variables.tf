# These variables are used to compose the name of the resource
variable "name" {
  type        = string
  description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "convention" {
  type        = string
  description = "(Required) Naming convention methode to be used for composing name. Possible values are: passthrough, cafclassic, cafrandom, random and convatec."
  default     = "convatec"
}

variable "businessunit" {
  type        = string
  description = "(Required if type=convatec) Business unit for composing resource name."
}

variable "environment" {
  type        = string
  description = "(Required if type=convatec) environment for composing resource name."
}

variable "postfix" {
  type        = string
  description = "(Optional) postfix to add while composing resource name."
  default     = ""
}

# These variables are related to the resource itself
variable "location" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "tags" {
  type        = map(string)
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  default     = null
}
