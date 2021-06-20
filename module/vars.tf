variable "allowed_subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs to be allowed to access the ACR"
}


variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to be used for ACR"
  default     = "" 
}


variable "resource_group_location" {
  type        = string
  description = "Location of the resource group to be used for ACR"
  default     = "" 
}



variable "acr_name" {
  type        = string
  description = "Name of the Azure Container Registry"
  default     = "New-ACR" 
}