variable "aws_account_ids" {
  description = "List of AWS Account IDs for integration"
  type        = list(string)
}

variable "spacelift_space_id" {
  description = "The Spacelift space ID"
  type        = string
}
