module "lb" {
  source = "../modules/lb"
  environment = var.environment
  name = "${var.environment}-${var.project_name}-lb"
  vpc_id = module.vpc.id
  public_subnets  = module.vpc.public_subnets
}
