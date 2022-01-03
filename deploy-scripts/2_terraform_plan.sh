#!/bin/bash

terraform init

# Make sure you export LINODE_TOKEN, TF_VAR_ssh_pub, and TF_VAR_trusted_ip prior to running
terraform plan -var-file=vars/prod.tfvars -out tfplan.file