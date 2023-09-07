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

module "module_qa" {
    source = "./modules"
    rgname = "qa1"
    location = "eastus"
    prefix = "qa"
    vnet1_cidr_prefix = "10.30.0.0/16"
    subnet1_cidr_prefix = "10.30.1.0/24"
}