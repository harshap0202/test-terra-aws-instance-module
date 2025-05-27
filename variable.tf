variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "security_group_name" {
  description = "Security Group Name"
  type        = string
  default     = "allow_http_ssh"
}

variable "ssh_cidr" {
  description = "SSH CIDR"
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "http_cidr" {
  description = "HTTP CIDR"
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "instance_name" {
  description = "Instance Name"
  type        = string
  default     = "nginx-server"
}

variable "ami" {
  description = "Instance AMI"
  type        = string
  default     = "ami-0e35ddab05955cf57"
}

variable "instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "ssh_key" {
  description = "Instance SSH Type"
  type        = string
  default     = "harsh"
}