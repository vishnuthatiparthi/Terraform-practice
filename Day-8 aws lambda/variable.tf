variable "aws_region" {
  description = "AWS region to deploy Lambda"
  type        = string
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_runtime" {
  description = "Runtime for Lambda function"
  type        = string
  default     = "python3.12"
}

variable "lambda_handler" {
  description = "Handler for the Lambda function"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "s3_bucket" {
  description = "S3 bucket name where Lambda ZIP is stored"
  type        = string
}

variable "s3_key" {
  description = "S3 key for the Lambda ZIP"
  type        = string
}

variable "local_zip_path" {
  description = "Path to the ZIP file (for source_code_hash)"
  type        = string
}
