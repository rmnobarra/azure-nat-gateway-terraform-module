module "nat_gateway" {
  source    = "git::https://github.com/rmnobarra/azure-nat-gateway-terraform-module.git?ref=v1.0.0"
  location = "westus"
  subnet_id = [
    "subnetid1",
    "subnetid2",
    "subnetid3"
  ]

  resource_group_name = "meu-grupo-de-recursos"
  zones               = ["1"]
}