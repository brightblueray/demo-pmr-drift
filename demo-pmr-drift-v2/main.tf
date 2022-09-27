terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.24.0"
    }

    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
  cloud {
    organization = "brightblueray"
    workspaces {
      name = "demo-pmr-drift-v2"
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg_module_demo" {
  source  = "app.terraform.io/brightblueray/rg_module_demo/azure"
  version = "~>2.0"
}

output "rg_name" {
  value = module.rg_module_demo.rg-name
}


#   required_providers {
#   }
# }