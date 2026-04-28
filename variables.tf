variable "region" {
  description = "AWS region"
  type        = string
}

variable "key_pair_key_name" {
  description = "Name of the key pair"
  type        = string
}

variable "key_pair_public_key" {
  description = "Public key material for the key pair"
  type        = string
  sensitive   = true
}

variable "subnet_id" {
  description = "Subnet ID for the instance and ENI"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID to associate with the instance and ENI"
  type        = string
}

variable "eni_private_ip_address" {
  description = "Primary private IP address for the ENI"
  type        = string
}

variable "eni_source_dest_check" {
  description = "Whether to enable source/destination checking on the ENI"
  type        = bool
}

variable "eni_device_index" {
  description = "Device index for the ENI attachment"
  type        = number
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
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

variable "instance_source_dest_check" {
  description = "Whether source/destination checking is enabled on the instance"
  type        = bool
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
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

variable "instance_name_tag" {
  description = "Name tag for the EC2 instance"
  type        = string
}