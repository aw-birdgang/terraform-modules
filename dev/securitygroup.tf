module "security-group" {
  source = "../modules/security-group"
  environment = var.environment
  vpc_id = module.dev-vpc.id
}
