# ubuntu-ec2-stack

## Description

EC2 instance with key pair and primary network interface in eu-central-1.

## Architecture Overview

This stack provisions:
- An EC2 key pair (`newkey`) for SSH access
- A primary Elastic Network Interface (ENI) attached to the Ubuntu EC2 instance
- An Ubuntu EC2 instance (`t2.medium`) in `eu-central-1a`

## Module Overview

| Module | Description |
|--------|-------------|
| `key_pair` | Manages the `newkey` EC2 key pair |
| `network_interface` | Manages the primary ENI attached to the Ubuntu EC2 instance |
| `instance` | Manages the Ubuntu EC2 instance |

## Variables Reference

| Variable | Type | Description | Default |
|----------|------|-------------|---------|
| `region` | string | AWS region | `eu-central-1` |
| `key_pair_key_name` | string | Name of the key pair | `newkey` |
| `key_pair_public_key` | string | Public key material (sensitive) | `""` |
| `subnet_id` | string | Subnet ID for the instance and ENI | `subnet-00f2ab429dc4142c1` |
| `security_group_id` | string | Security group ID | `sg-045cc6988f5fccbb2` |
| `eni_private_ip_address` | string | Primary private IP for the ENI | `10.255.255.87` |
| `eni_source_dest_check` | bool | Source/dest check on ENI | `true` |
| `eni_device_index` | number | Device index for ENI attachment | `0` |
| `instance_ami` | string | AMI ID for the instance | `ami-01f79b1e4a5c64257` |
| `instance_type` | string | EC2 instance type | `t2.medium` |
| `availability_zone` | string | Availability zone | `eu-central-1a` |
| `tenancy` | string | Instance tenancy | `default` |
| `ebs_optimized` | bool | EBS optimized | `false` |
| `instance_source_dest_check` | bool | Source/dest check on instance | `true` |
| `monitoring` | bool | Detailed monitoring | `false` |
| `metadata_http_endpoint` | string | Metadata service availability | `enabled` |
| `metadata_http_protocol_ipv6` | string | IPv6 metadata endpoint | `disabled` |
| `metadata_http_put_response_hop_limit` | number | Metadata hop limit | `2` |
| `metadata_http_tokens` | string | IMDSv2 token requirement | `required` |
| `metadata_instance_metadata_tags` | string | Instance metadata tags access | `disabled` |
| `enclave_options_enabled` | bool | Nitro Enclaves enabled | `false` |
| `capacity_reservation_preference` | string | Capacity reservation preference | `open` |
| `root_block_device_delete_on_termination` | bool | Delete root volume on termination | `true` |
| `instance_name_tag` | string | Name tag for the instance | `ubuntu` |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `instance_id` | ID of the EC2 instance |
| `instance_private_ip` | Private IP address of the EC2 instance |
| `network_interface_id` | ID of the primary network interface |

## Usage Instructions

### 1. Initialize

```sh
terraform init
```

### 2. Import Existing Resources

```sh
chmod +x imports.sh
./imports.sh terraform
```

### 3. Plan

```sh
terraform plan -var-file environments/sg.tfvars
```

### 4. Apply

```sh
terraform apply -var-file environments/sg.tfvars
```