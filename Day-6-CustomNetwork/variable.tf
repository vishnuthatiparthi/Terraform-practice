variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "vpc_cidr" { type = string }

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public subnet CIDR blocks"
}
variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnet CIDR blocks"
}
variable "azs" {
  type        = list(string)
  description = "Availability Zones to use"
}
variable "instance_ami" {
  type        = string
  description = "AMI ID to use for the EC2 instance"
}
variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}
