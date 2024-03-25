module "s3" {
  source = "../modules/s3"
  environment = var.environment
  name = "${var.environment}-${var.project_name}-bucket"
}
