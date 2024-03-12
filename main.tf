resource "azurerm_public_ip" "nat_gateway_pip" {
  name                = var.pip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.pip_allocation_method
  sku                 = var.pip_sku
}

resource "azurerm_nat_gateway" "nat_gateway" {
  name                    = var.natgateway_name
  location                = var.location
  resource_group_name     = var.resource_group_name
  sku_name                = var.natgateway_sku
  idle_timeout_in_minutes = var.natgateway_idle_timeout
}

resource "azurerm_nat_gateway_public_ip_association" "nat_gateway_pip_association" {
  nat_gateway_id       = azurerm_nat_gateway.nat_gateway.id
  public_ip_address_id = azurerm_public_ip.nat_gateway_pip.id
}

resource "azurerm_subnet_nat_gateway_association" "nat_gateway_subnet_association" {
  count          = length(var.subnet_id)
  subnet_id      = var.subnet_id[count.index]
  nat_gateway_id = azurerm_nat_gateway.nat_gateway.id
}
