//AWS 
region      = "us-east-1"
environment = "dev"

/* module networking */
vpc_cidr             = "10.64.0.0/16"
public_subnets_cidr  = ["10.64.1.0/24", "10.64.2.0/24"] //List of Public subnet cidr range
private_subnets_cidr = ["10.64.10.0/24", "10.64.20.0/24"] //List of private subnet cidr range

/*EKS cluster*/
cluster = "2020c-dev"
aws_account_number = "401413892014"

/* EKS autoscaling */
desired_capacity = 3
max_size         = 5
