locals {
  allowed_virtual_networks = [for s in var.allowed_subnet_ids : {
    action    = "Allow",
    subnet_id = s
  }]
}



resource "azurerm_container_registry" "acr" {
  name                     = var.acr_name
  resource_group_name      = var.resource_group_name == "" ? azurerm_resource_group.rg.name : var.resource_group_name
  location                 = var.resource_group_name == "" ? azurerm_resource_group.rg.location : var.resource_group_location
  sku                      = "Premium"
  admin_enabled            = false
  georeplication_locations = ["East US", "West Europe"]
  network_rule_set {
    default_action  = "Deny"
    virtual_network = local.allowed_virtual_networks
  }
}
}
