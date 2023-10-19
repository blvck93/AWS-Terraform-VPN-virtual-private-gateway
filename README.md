# AWS-Terraform-VPN-virtual-private-gateway

This GitHub repository contains a Terraform script that sets up a Virtual Private Gateway (VGW) on AWS. A VGW allows communication between an AWS VPC (Virtual Private Cloud) and on-premises networks using two VPN (Virtual Private Network) connections. The script can be used to automate the creation and configuration of the VGW and the necessary components such as VPN connections, customer gateways, and routing.


# File structure
- outputs.tf : This file contains the outputs that are returned after the Terraform script is run - Peer IP addresses for two VPN connections.
- provider.tf : This file containts root module of the script which is provider configurations
- vars.tf : This file contains the values for the variables that are used in the script - VPN parameteres, VPC settings etc.
- vpc.tf : Creates VPC.
- vpn.tf : Creates two VPN connections and Customer Gateway.
- README.md : This file contains the documentation for the repository.

# Run commands
From the directory where you have copied the files run:
- terraform init
- terraform apply

To remove all created objects:
- terraform destroy
