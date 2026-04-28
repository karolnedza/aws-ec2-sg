resource "aws_instance" "this" {
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  availability_zone = var.availability_zone
  tenancy           = var.tenancy
  ebs_optimized     = var.ebs_optimized
  monitoring        = var.monitoring

  primary_network_interface {
    network_interface_id = var.primary_network_interface_id
  }

  metadata_options {
    http_endpoint               = var.metadata_http_endpoint
    http_protocol_ipv6          = var.metadata_http_protocol_ipv6
    http_put_response_hop_limit = var.metadata_http_put_response_hop_limit
    http_tokens                 = var.metadata_http_tokens
    instance_metadata_tags      = var.metadata_instance_metadata_tags
  }

  enclave_options {
    enabled = var.enclave_options_enabled
  }

  capacity_reservation_specification {
    capacity_reservation_preference = var.capacity_reservation_preference
  }

  root_block_device {
    delete_on_termination = var.root_block_device_delete_on_termination
  }

  tags = {
    Name = var.name_tag
  }
}