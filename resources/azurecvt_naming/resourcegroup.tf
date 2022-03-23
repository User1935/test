## resource groups
locals {
  # Alphanumeric, period, hyphen, underscore.
  rg = {
    passthrough = (var.type == "rg" && var.convention == "passthrough") ? substr(local.filtered.alphanumhup, 0, local.max) : null
    cafclassic  = (var.type == "rg" && var.convention == "cafclassic") ? substr("${lookup(var.cvt_prefix, var.type)}${local.filtered.alphanumhup}${var.postfix == "" ? "" : "-"}${local.filteredpostfix.alphanumhup}", 0, local.max) : null
    cafrandom   = (var.type == "rg" && var.convention == "cafrandom") ? substr("${lookup(var.cvt_prefix, var.type)}${local.filtered.alphanumhup}${var.postfix == "" ? "" : "-"}${local.filteredpostfix.alphanumhup}${local.fullyrandom}", 0, local.max) : null
    random      = (var.type == "rg" && var.convention == "random") ? substr("${lookup(var.cvt_prefix, var.type)}${local.fullyrandom}", 0, local.max) : null
    convatec    = (var.type == "rg" && var.convention == "convatec") ? substr("${lookup(var.cvt_prefix, var.type)}${local.filtered_businessunit.alphanumhup}${var.businessunit == "" ? "" : "-"}${local.filtered_environment.alphanumhup}${var.name == "" ? "" : "-"}${local.filtered.alphanumhup}${var.postfix == "" ? "" : "-"}${local.filteredpostfix.alphanumhup}", 0, local.max) : null
  }
}
output "rg" {
  depends_on = [local.rg]
  value      = local.rg[var.convention]
}
