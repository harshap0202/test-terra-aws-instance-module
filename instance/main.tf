resource "aws_instance" "nginx_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  security_groups             = [var.security_groups]
  associate_public_ip_address = true
  key_name                    = var.ssh_key

  user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install -y nginx
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = var.instance_name
  }
}

