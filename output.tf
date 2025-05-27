output "public_ip" {
  value       = module.instance.public_ip
  description = "Public IP of the EC2 instance"
}
