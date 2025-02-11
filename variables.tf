variable "db_username" {
  type = string
  sensitive = true
}

variable "db_password" {
  type = string
  sensitive = true
}

variable "key_name" {
  type = string
  sensitive = true
}

# Variable definition for EC2 instance type
variable "instance_type" {
  type        = string
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"  # Default to t2.micro if no value is provided
}

variable "db_name" {
  description = "The name of the WordPress database"
  type        = string
  default     = "wordpressdb"
}