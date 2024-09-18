# Terraform AWS Configuration

This repository contains Terraform configuration files for deploying AWS resources.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Variables](#variables)
- [Usage](#usage)

## Overview

This project allows you to provision AWS EC2 instances using Terraform. It defines the necessary configurations, including instance types, AMIs, security groups, and SSH key pairs.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (version 1.2.0 or later)
- [AWS CLI](https://aws.amazon.com/cli/) (configured with your credentials)

You should also have an AWS account and necessary permissions to create resources.

## Getting Started

1. Clone the repository:

```bash
git clone https://github.com/noalotan/Terraform.git
cd Terraform
```
   
2. Edit the variables.tf file to define your variables:

```bash
vim variables.tf
```

3. Initialize Terraform:

```bash
terraform init
```

4. Apply the configuration:

```bash
terraform apply
```

## Variables

The following variables are available for configuration:

_-region: The AWS region to deploy resources in._

_-ami: The AMI ID to use for the EC2 instance._

_-instance_type: The type of EC2 instance to create._

_-subnet_id: The ID of the subnet where the instance will be deployed._

_-security_groups: The security groups to associate with the instance._

_-key_name: The name of the SSH key pair to use for accessing the instance._

_-instance_name: The name tag for the EC2 instance._

## Usage
Once the resources are provisioned, you can SSH into your EC2 instance using the following command:

```bash
ssh -i /path/to/your-key.pem ec2-user@<public-ip-address>
```

Replace /path/to/your-key.pem with the path to your private key file and <public-ip-address> with the public IP of the EC2 instance.
