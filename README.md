# Terraform-Azure-ScaleSet
Check Point Lab deployment with ScaleSets and Windows/Linux Jump Servers

Terraform v12.19 and the AzureRM provider v1.44 was used in this demo

The demo requires that autoprovisioning already setup with an existing R80.40 or later management server.  See the Check Point Cloud Extension instructions for details on setup.

This template will accept the license agreement when it is deployed.  See the marketplace_agreement.tf for details.

Adjust the tags on the ScaleSet to match your profile in the autoprovisioning setup as part of Check Point Azure Scale Set Solution

- Based on R80.40 gateways
- Simple setup with multiple DMZ's and route tables. 
- Linux Jump Server with public IP to gain access to the enviroment
- Windows RDP via the ScaleSet to a jump host behind the gateway for testing

At the end of the deployment the public ip for the Linux/Windows server will be aviailable.

