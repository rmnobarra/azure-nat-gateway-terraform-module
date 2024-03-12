![Terraform Module Test](https://github.com/rmnobarra/azure-nat-gateway-terraform-module/actions/workflows/workflow.yaml/badge.svg)

# Terraform Azure Nat Gateway Module

This Terraform module creates an Azure Nat gateway.

## Usage

```hcl
module "nat_gateway" {
  source    = "git::https://github.com/rmnobarra/azure-nat-gateway-terraform-module.git?ref=v1.0.0"
  location            = "westus3"
  resource_group_name = "meu-grupo-de-recursos"
  zones               = ["1"]
}
```


Theres a fullexample in /examples folder.