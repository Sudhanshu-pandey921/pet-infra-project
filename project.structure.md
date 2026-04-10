# Terraform Infrastructure Project Structure

## Overview
This project contains Infrastructure as Code (IaC) using Terraform modules to manage Azure resources across multiple environments.

## Directory Structure

```
infra-project/
├── environments/              # Environment-specific configurations
│   ├── dev/                   # Development environment
│   │   ├── main.tf           # Main configuration for dev
│   │   ├── provider.tf       # Provider configuration for dev
│   │   ├── variables.tf      # Variable definitions for dev
│   │   └── terraform.tfvars  # Variable values for dev
│   └── prod/                  # Production environment
│       ├── main.tf           # Main configuration for prod
│       ├── provider.tf       # Provider configuration for prod
│       ├── variables.tf      # Variable definitions for prod
│       └── terraform.tfvars  # Variable values for prod
│
├── modules/                   # Reusable Terraform modules
│   ├── nic_vm/                # Network Interface Card and Virtual Machine module
│   │   ├── main.tf           # Resource definitions
│   │   ├── outputs.tf        # Output values
│   │   └── variables.tf      # Input variables
│   │
│   ├── public_ip/             # Public IP Address module
│   │   ├── main.tf           # Resource definitions
│   │   ├── outputs.tf        # Output values
│   │   └── variables.tf      # Input variables
│   │
│   ├── rg/                    # Resource Group module
│   │   ├── main.tf           # Resource definitions
│   │   ├── outputs.tf        # Output values
│   │   └── variables.tf      # Input variables
│   │
│   ├── subnet/                # Subnet module
│   │   ├── main.tf           # Resource definitions
│   │   ├── outputs.tf        # Output values
│   │   └── variables.tf      # Input variables
│   │
│   └── vnet/                  # Virtual Network module
│       ├── main.tf           # Resource definitions
│       ├── outputs.tf        # Output values
│       └── variables.tf      # Input variables
│
└── project.structure.md       # This file - project documentation
```

## Module Purpose

- **nic_vm**: Azure Network Interface Card and Virtual Machine creation and management
- **public_ip**: Azure Public IP Address creation and configuration
- **rg**: Azure Resource Group creation and management
- **subnet**: Azure Subnet creation and configuration  
- **vnet**: Azure Virtual Network creation and configuration

## Environment Usage

- **dev**: Development environment for testing and development
- **prod**: Production environment for live infrastructure

## File Descriptions

### Environment Files
- **main.tf**: Core resource configurations for the environment
- **provider.tf**: Azure provider configuration and authentication
- **variables.tf**: Input variable definitions with types and descriptions
- **terraform.tfvars**: Actual variable values specific to the environment

### Module Files
- **main.tf**: Resource definitions using Terraform syntax
- **outputs.tf**: Values exported from the module for use by other modules
- **variables.tf**: Input variables the module accepts
