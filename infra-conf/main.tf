module "vpc" {
  source              = "../tf-module-vpc"
  env                 = var.env
  default_vpc_id      = var.default_vpc_id
  for_each            = var.vpc
  cidr_block          = each.value.cidr_block //holds all cidr blocks lists from vpc
  public_subnets      = each.value.public_subnets // holds all subnet maps from vpc
  private_subnets     = each.value.private_subnets
  availability_zone   = each.value.availability_zone
}