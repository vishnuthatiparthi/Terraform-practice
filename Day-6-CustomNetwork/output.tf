output "vpc_id" {
  value       = aws_vpc.custom.id
  description = "The VPC ID"
}

output "public_subnet_ids" {
  value       = aws_subnet.public[*].id
  description = "List of public subnet IDs"
}

output "private_subnet_ids" {
  value       = aws_subnet.private[*].id
  description = "List of private subnet IDs"
}

output "instance_id" {
  value       = aws_instance.app.id
  description = "ID of the t3.micro instance"
}

output "instance_private_ip" {
  value       = aws_instance.app.private_ip
  description = "Private IP of the t3.micro instance"
}
