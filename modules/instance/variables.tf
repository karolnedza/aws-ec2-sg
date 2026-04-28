variable "ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the instance"
  type        = string
}

variable "tenancy" {
  description = "Tenancy of the instance"
  type        = string
}

variable "ebs_optimized" {
  description = "Whether the instance is EBS optimized"
  type        = bool
}

variable "source_dest_check" {
  description = "Whether source/destination checking is enabled"
  type        = bool
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "security_group_id" {
  description = "Security group ID to associate with the instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "primary_network_interface_id" {
  description = "ID of the primary network interface"
  type        = string
}

variable "metadata_http_endpoint" {
  description = "Whether the metadata service is available"
  type        = string
}

variable "metadata_http_protocol_ipv6" {
  description = "Whether IPv6 endpoint for instance metadata service is enabled"
  type        = string
}

variable "metadata_http_put_response_hop_limit" {
  description = "HTTP PUT response hop limit for instance metadata requests"
  type        = number
}

variable "metadata_http_tokens" {
  description = "Whether session tokens are required for metadata service"
  type        = string
}

variable "metadata_instance_metadata_tags" {
  description = "Whether access to instance tags from metadata is enabled"
  type        = string
}

variable "enclave_options_enabled" {
  description = "Whether Nitro Enclaves are enabled"
  type        = bool
}

variable "capacity_reservation_preference" {
  description = "Capacity reservation preference"
  type        = string
}

variable "root_block_device_delete_on_termination" {
  description = "Whether the root volume is deleted on termination"
  type        = bool
}

variable "name_tag" {
  description = "Name tag for the instance"
  type        = string
}