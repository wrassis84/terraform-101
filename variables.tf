variable "region" {
  description = "Define what region the instance will be deployed"
  default = "us-east-1"
}

variable "name" {
  description = "Name of the Application"
  default = "server01"
}

variable "env" {
  description = "Environment of the Application"
  default = "prod"
}

variable "ami" {
  description = "AWS AMI to be used "
  default = "ami-07ebfd5b3428b6f4d"
}

variable "instance_type" {
  description = "AWS Instance type defines the hardware configuration of the machine"
  default = "t2.micro"
}

variable "vpc_id" {
  description = "VPC id for server EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet id for web server EC2 instance"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for server VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the vpc"
  type        = string
  default     = "server"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the server subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "aws_az" {
  description = "Availability Zone for the server subnet"
  type        = string
  default     = "us-east-1a"
}

variable "subnet_name" {
  description = "Name for the server subnet"
  type        = string
  default     = "server"
}
