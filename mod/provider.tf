# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.20.0"
  features {}
}

terraform {
  required_version = "0.12.29"
  backend "azurerm" {
    resource_group_name = "tf-remote-store"
    storage_account_name = "sa1235"
    container_name = "terraform"
    key = "mod/terraform.tfstate"
  }
}