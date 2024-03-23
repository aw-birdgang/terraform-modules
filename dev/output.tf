output "dev_vpc_id" {
  value = module.dev-vpc.id
}

output "dev_vpc_public_subnets" {
  value = module.dev-vpc.public_subnets
}

output "dev_vpc_private_subnets" {
  value = module.dev-vpc.private_subnets
}
#
output "dev_vpc_subnet_ids" {
  value = [module.dev-vpc.private_1_id, module.dev-vpc.private_2_id]
}
