resource "random_id" "random_id_prefix" {
  byte_length = 2
}
/*====
Variables used across all modules
======*/
locals {
  production_availability_zones = ["${var.region}a", "${var.region}b", "${var.region}c"]
}

module "networking" {
  source               = "./modules/networking"

  region               = "${var.region}"
  environment          = "${var.environment}"
  vpc_cidr             = "${var.vpc_cidr}"
  public_subnets_cidr  = "${var.public_subnets_cidr}"
  private_subnets_cidr = "${var.private_subnets_cidr}"
  availability_zones   = "${local.production_availability_zones}"
  cluster              = "${var.cluster}"
}

module "eks" {
  source               = "./modules/eks"

  desired_capacity     = "${var.desired_capacity}"
  max_size             = "${var.max_size}"
  vpc_id               = module.networking.vpc_id
  private_subnets_cidr = "${var.private_subnets_cidr}"
  cluster              = "${var.cluster}"
  private_subnets_id   = module.networking.private_subnets_id
  public_subnets_id    = module.networking.public_subnets_id
  aws_account_number   = "${var.aws_account_number}"
  vpc_cidr             = "${var.vpc_cidr}"
  region               = "${data.aws_region.current.name}"
}