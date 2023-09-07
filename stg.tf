/*# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}*/

module "module_stg" {
    source = "./modules"
    rgname = "stg1"
    location = "eastus"
    prefix = "stg"
    vnet1_cidr_prefix = "10.20.0.0/16"
    subnet1_cidr_prefix = "10.20.1.0/24"
}