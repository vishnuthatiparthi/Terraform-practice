variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "bucket_names" {
  description = "List of S3 bucket names to create"
  type        = list(string)
}
