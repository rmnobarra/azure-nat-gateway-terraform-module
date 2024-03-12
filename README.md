![Terraform Module Test](https://github.com/rmnobarra/azure-nat-gateway-terraform-module/actions/workflows/workflow.yaml/badge.svg)

# Terraform Azure Nat Gateway.

This Terraform module creates a Nat gateway

## Usage

```hcl
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
```


Theres a fullexample in `/examples` folder.