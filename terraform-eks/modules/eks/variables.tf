variable "vpc_id" {
  description = "Id of vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block of the vpc"
}

variable "private_subnets_cidr" {
  type        = list
  description = "The CIDR block for the private subnet"
}

variable "cluster" {
    description = "name of the EKS cluster"
}

variable "private_subnets_id" {
    type = list
    description = "The private subnets id"
}

variable "public_subnets_id" {
    type = list
    description = "The public subnets id"
}

variable "aws_account_number" {
    type = number
    description = "The account number using to create eks cluster"
}

variable "region" {
  description = "The region to launch the bastion host"
}

variable "desired_capacity" {
  type = number
  description = "The desired capacity of instances for eks cluster"
}

variable "max_size" {
  type = number
  description = "The max size of instances for eks cluster"
}