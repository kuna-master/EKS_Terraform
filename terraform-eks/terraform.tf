terraform {
 backend "s3" {
 encrypt = true
 bucket = "vlad-eks-backend-2020c"
 dynamodb_table = "20c-state-lock"
 region = "us-east-1"
 key = "local-modules-cluster/terraform.tfstate"
}
}
