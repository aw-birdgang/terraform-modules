output "dev_vpc_id" {
  value = module.vpc.id
}

output "dev_vpc_public_subnets" {
  value = module.vpc.public_subnets
}

output "dev_vpc_private_subnets" {
  value = module.vpc.private_subnets
}
#
output "dev_vpc_subnet_ids" {
  value = [module.vpc.private_1_id, module.vpc.private_2_id]
}
