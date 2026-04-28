output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.instance.instance_id
}

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = module.instance.private_ip
}

output "network_interface_id" {
  description = "ID of the primary network interface"
  value       = module.network_interface.network_interface_id
}