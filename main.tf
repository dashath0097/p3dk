terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "~> 1.0"
    }
  }
}

provider "spacelift" {
  # Spacelift API credentials (configured via environment variables)
}

# Create AWS integrations for multiple accounts
resource "spacelift_aws_integration" "developer_aws" {
  for_each   = toset(var.aws_account_ids)  # Loop over each account ID
  name       = "AWS-${each.value}"
  role_arn   = "arn:aws:iam::${each.value}:role/Spacelift"
  space_id   = var.spacelift_space_id
}
