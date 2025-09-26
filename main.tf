provider "aws" {
  region = "eu-north-1"
}

# Security group to allow SSH + HTTP
resource "aws_security_group" "allow_ssh_http" {
  name        = "allow_ssh_http"
  description = "Allow SSH and HTTP inbound traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create 5 RHEL instances
resource "aws_instance" "my_rhel" {
  count         = 5
  ami           = "ami-005019f47c98b4abd" 
  instance_type = "t3.small"              
  key_name      = "myfirst-keypair"

  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]

  tags = {
    Name = "Terraform-RHEL-${count.index + 1}" # Unique names
  }
}

# Output all instance public IPs
output "instance_public_ips" {
  value = [for instance in aws_instance.my_rhel : instance.public_ip]
}
