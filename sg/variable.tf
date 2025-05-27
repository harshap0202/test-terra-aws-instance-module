variable "security_group_name" {
  description = "Security Group Name"
  type        = string
}

variable "ssh_cidr" {
  description = "SSH CIDR"
  type = list(string)
}

variable "http_cidr" {
  description = "HTTP CIDR"
  type = list(string)
}

variable "vpc_id" {
  description = "VPC Id"
  type = string
}