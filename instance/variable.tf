variable "instance_name" {
  description = "Instance Name"
  type        = string
}

variable "ami" {
  description = "Instance AMI"
  type        = string
}

variable "instance_type" {
  description = "Instance Type"
  type        = string
}

variable "ssh_key" {
  description = "Instance SSH Type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet Id"
  type = string
}

variable "security_groups" {
    description = "Security Groups"
    type = string
}