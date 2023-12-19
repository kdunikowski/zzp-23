data "azurerm_resource_group" "example" {
  name = "rg-zzp-23"
}

resource "azurerm_storage_account" "example" {
  name                     = "stzzp3210"
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_account" "example2" {
  name                     = "stzzp43210"
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging",
    PB = "YES"
  }
}