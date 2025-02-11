# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"  # Set AWS region to US East 1 (N. Virginia)
}

# Local variables block for configuration values
locals {
    aws_key = "HC_AWS_Key"   # SSH key pair name for EC2 instance access
}

# EC2 instance resource definition
resource "aws_instance" "my_server" {
   ami           = data.aws_ami.amazonlinux.id  # Use the AMI ID from the data source
   instance_type = var.instance_type            # Use the instance type from variables
   key_name      = "${local.aws_key}"          # Specify the SSH key pair name
   security_groups = [aws_security_group.web_sg.name]  # Attach security group

   # Run WordPress install script upon creation
   user_data = file("wp_install.sh")
  
   # Add tags to the EC2 instance for identification
   tags = {
     Name = "my ec2 for wordpress"
   }                  
}

# Output the public IP of the instance
output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_server.public_ip
}