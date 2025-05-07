terraform {
  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "tfstatefoxapp"
    container_name       = "dev"
    key                  = "terraform.tfstate"
  }
}





