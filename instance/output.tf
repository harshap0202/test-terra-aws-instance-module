output "public_ip" {
  value       = aws_instance.nginx_instance.public_ip
  description = "Public IP of the EC2 instance"
}
