variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = "string"
}

# ec2 instance variables
variable "ami_name" {}

variable "ami_id" {}
variable "ami_key_pair_name" {}
