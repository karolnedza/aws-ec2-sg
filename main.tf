module "key_pair" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_key_name
  public_key = var.key_pair_public_key
}

module "network_interface" {
  source = "./modules/network_interface"

  subnet_id          = var.subnet_id
  private_ip_address = var.eni_private_ip_address
  security_group_id  = var.security_group_id
  source_dest_check  = var.eni_source_dest_check
}

module "instance" {
  source = "./modules/instance"

  ami                                     = var.instance_ami
  instance_type                           = var.instance_type
  key_name                                = module.key_pair.key_name
  availability_zone                       = var.availability_zone
  tenancy                                 = var.tenancy
  ebs_optimized                           = var.ebs_optimized
  source_dest_check                       = var.instance_source_dest_check
  monitoring                              = var.monitoring
  security_group_id                       = var.security_group_id
  subnet_id                               = var.subnet_id
  primary_network_interface_id            = module.network_interface.network_interface_id
  metadata_http_endpoint                  = var.metadata_http_endpoint
  metadata_http_protocol_ipv6             = var.metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit    = var.metadata_http_put_response_hop_limit
  metadata_http_tokens                    = var.metadata_http_tokens
  metadata_instance_metadata_tags         = var.metadata_instance_metadata_tags
  enclave_options_enabled                 = var.enclave_options_enabled
  capacity_reservation_preference         = var.capacity_reservation_preference
  root_block_device_delete_on_termination = var.root_block_device_delete_on_termination
  name_tag                                = var.instance_name_tag
}