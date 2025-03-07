variable "aws_account_ids" {
  description = "List of AWS Account IDs"
  type        = list(string)
  default     = []
}


variable "spacelift_space_id" {
  description = "The Spacelift space ID"
  type        = string
}
