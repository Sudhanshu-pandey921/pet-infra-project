variable "subnet_id" {
  description = "The ID of the subnet to associate with the NSG."
  type        = string
}

variable "nsg_id" {
  description = "The ID of the NSG to associate with the subnet."
  type        = string
}