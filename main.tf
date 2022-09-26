terraform {
  required_providers {
    azurerm = {

    }
  }

  cloud {
    organization = "brightblueray"
    workspaces {
      name = "demo-pmr-drift-v1"
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg_module_demo" {
  source  = "app.terraform.io/brightblueray/rg_module_demo/azure"
  version = "1.0.1"
}

