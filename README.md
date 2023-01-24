# AWS-Terraform-VPN-virtual-private-gateway

This GitHub repository contains a Terraform script that sets up a Virtual Private Gateway (VGW) on AWS. A VGW allows communication between an AWS VPC (Virtual Private Cloud) and on-premises networks using two VPN (Virtual Private Network) connections. The script can be used to automate the creation and configuration of the VGW and the necessary components such as VPN connections, customer gateways, and routing.

Read more about this particural VPN setup - URL to be advertised

# File structure
- ec2.tf : Creates EC2 instance.
- vpc.tf : Creates VPC.
- vpn.tf : Creates two VPN connections.
- outputs.tf : This file contains the outputs that are returned after the Terraform script is run - Peer IP addresses for two VPN connections and EC2 instance private IP.
- vars.tf : This file contains the values for the variables that are used in the script - VPN parameteres, VPC settings etc.
- provider.tf : This file containts root module of the script which is provider configurations
- README.md : This file contains the documentation for the repository.
