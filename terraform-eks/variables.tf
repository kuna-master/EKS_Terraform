variable "region" {
  description = "us-east-1"
}

variable "environment" {
  description = "The Deployment environment"
}

//Networking
variable "vpc_cidr" {
  description = "The CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list
  description = "The CIDR block for the public subnet"
}

variable "private_subnets_cidr" {
  type        = list
  description = "The CIDR block for the private subnet"
}

//EKS

variable "cluster" {
  description = "The name of the cluster"
}

variable "aws_account_number" {
  type = number
  description = "The account number using to create eks cluster"
}

variable "desired_capacity" {
  type = number
  description = "The desired capacity of instances for eks cluster"
}

variable "max_size" {
  type = number
  description = "The max size of instances for eks cluster"
}


/* variable "aws_eks_cluster-demo-endpoint" {
  description = "The aws eks cluster demo end poin from eks module"
} */