# Terraform Azure Storage Account - Module 18

This project deploys an Azure Storage Account and a private Blob Container using Terraform with secure, production-oriented defaults.

## Resources Deployed

- Azure Resource Group
- Azure Storage Account (StorageV2)
- Azure Blob Container (Private Access)

## Security Configuration

- HTTPS traffic only enabled
- TLS 1.2 enforced
- Public network access disabled
- Blob public access disabled
- Shared access keys disabled
- Private blob container access
- Resource tagging enabled

## Features

- Production-style naming conventions
- Configurable replication type and account tier
- Secure by default configuration
- Terraform outputs for resource consumption in future modules

## Project Structure

```
terraform-storage-account-18
│
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── providers.tf
├── README.md
└── .gitignore
```

## Variables

| Variable | Description |
|---------|---------|
| resource_group_name | Resource Group name |
| location | Azure region |
| storage_account_name | Storage Account name |
| account_tier | Storage account tier |
| account_replication_type | Replication type |
| account_kind | Storage account kind |
| public_network_access_enabled | Enable or disable public access |
| allow_nested_items_to_be_public | Allow blob public access |
| shared_access_key_enabled | Enable or disable shared access keys |
| min_tls_version | Minimum TLS version |
| container_name | Blob container name |
| tags | Resource tags |

## Outputs

- storage_account_name
- storage_account_id
- primary_blob_endpoint
- blob_container_name
- blob_container_id

## Deployment

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

## Notes

This project is part of a Terraform and Azure Infrastructure learning path focused on building production-style Azure environments using Infrastructure as Code.