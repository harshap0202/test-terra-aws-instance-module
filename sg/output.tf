output "security_groups" {
  value = aws_security_group.allow_http_ssh.id
  description = "Security Groups"
}