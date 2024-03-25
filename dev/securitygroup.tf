module "security-group" {
  source = "../modules/security-group"
  environment = var.environment
  vpc_id = module.vpc.id
}
