module "acr" {

    source = "./module/container_registry.tf"
    allowed_subnet_ids      = $(ALLOWED_SUBNET_IDS))
    resource_group_name     = $(RESOURCE_GROUP_NAME)
    resource_group_location = $(RESOURCE_GROUP_LOCATION)
    acr_name                = $(ACR_NAME)

}
