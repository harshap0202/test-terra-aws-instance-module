output "vpc_id" {
  value = aws_vpc.main.id
  description = "VPC Id"
}

output "subnet_id" {
  value = aws_subnet.public.id
  description = "Subnet Id"
}