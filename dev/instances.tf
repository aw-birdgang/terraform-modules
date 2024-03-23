 module "instances" {
   source = "../modules/instances"
   name = "bastion"
   environment = var.environment
   vpc_id = module.dev-vpc.id
   vpc_security_group_ids = module.security-group.vpc_ec2_security_group_ids
   public_subnets = [module.dev-vpc.public_1_id]
   key_pair_name = "payments-key"
 }
