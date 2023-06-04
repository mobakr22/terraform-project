# 2-Tier APP via Terraform
This repository contains the Terraform code to deploy small example of infrastructure on AWS. It includes creating a VPC with one public and one private subnets, launching EC2 instances in the public and private subnets, and creating S3 bucket , route table and internet Gateway .

## AWS Architecture
<img src="https://github.com/mobakr22/terraform-project/assets/129240702/d49fdbe7-2fdb-4fe2-93aa-89fa9726a65b" width="500" >

### OVERView about Terraform
 - Terraform is an open source “Infrastructure as Code” tool created by HashiCorp1. 
 - It is used to define and provision the complete infrastructure using an easy-to-learn declarative language2.
 - Terraform enables developers to use a high-level configuration language called HCL (HashiCorp Configuration Language) to describe the desired “end-state” cloud or on-premises infrastructure for running an application1.
 -  It is an infrastructure provisioning tool where you can store your cloud infrastructure setup as codes2.
 -   You can use Terraform to safely and predictably provision and manage infrastructure in any cloud3.
 
 ## This project uses Terraform to create the following AWS resources:

- VPC
- Internet Gateway
- Route Table
- Public EC2 instances
- Private EC2 instances
- S3 Bucket
 

## Prerequisites

Before running the deployment script, you will need to have the following:

- AWS account

- Terraform installed on your local machine

- AWS CLI installed on your local machine

- AWS credentials configured on your local machine
- A S3 bucket using aws console to store the Terraform state file, and DynamoDB to use for state locking

## terraform Commands used:

```
- terraform init
- terraform plan
- terraform apply
- terraform destroy
```

## Test
# <img src="https://github.com/mobakr22/terraform-project/assets/129240702/4c0eb944-3a76-4642-9b60-6ba46a37b09f" width=500>
# <img src="https://github.com/mobakr22/terraform-project/assets/129240702/58acfdb6-7453-40d0-8929-2c72ce1f65a1" width=500>
# <img src="https://github.com/mobakr22/terraform-project/assets/129240702/402498f3-d74a-45d9-bb83-b34e2d0a19c1" width=500>

# Author

- [linkedin](https://www.linkedin.com/in/%20mostafa-magdi22)
