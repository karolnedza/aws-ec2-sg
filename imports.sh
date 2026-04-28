#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.key_pair.aws_key_pair.this' 'newkey'
"$1" import -var-file environments/sg.tfvars 'module.network_interface.aws_network_interface.this' 'eni-032bcfee7e9d98152'
"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this' 'i-084195b8fb1aec296'