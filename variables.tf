variable "location" {
  description = "Azure location where the NAT gateway and public IP will be created."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "pip_allocation_method" {
  description = "The allocation method for the public IP."
  type        = string
  default     = "Static"
  
}

variable "pip_sku" {
  description = "The SKU of the public IP."
  type        = string
  default     = "Standard"
  
}

variable "pip_name" {
  description = "The name of the public IP."
  type        = string
  default     = "nat-gateway-pip"
  
}

variable "natgateway_name" {
  description = "The name of the NAT gateway."
  type        = string
  default     = "nat-gateway"
  
}

variable "natgateway_sku" {
  description = "The SKU of the NAT gateway."
  type        = string
  default     = "Standard"
  
}

variable "natgateway_idle_timeout" {
  description = "The idle timeout of the NAT gateway."
  type        = number
  default     = 10
  
}

variable "subnet_id" {
  description = "The ID of the subnet to associate with the NAT gateway"
  type        = list(string)
  default = [
    
  ]
}
