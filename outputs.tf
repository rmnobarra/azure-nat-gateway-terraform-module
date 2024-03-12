output "nat_gateway_id" {
  value = azurerm_nat_gateway.nat_gateway.id
}

output "public_ip_address" {
  value = azurerm_public_ip.nat_gateway_pip.ip_address
}
