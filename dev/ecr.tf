module "ecr" {
  source = "../modules/ecr"
  environment = var.environment
  name = "${var.environment}-${var.project_name}-ecr"
}
