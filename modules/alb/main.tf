# create application load balancer
resource "aws_alb" "alb" {
  name     = var.name
  internal = false

  security_groups = var.security_groups
  subnets         = var.subnet_ids

  enable_deletion_protection = false

  access_logs {
    bucket = var.log_bucket
    prefix = "alb"
  }

  tags = {
    Name             = "${var.environment}-${var.name}-alb"
    Service          = var.name
    Environment      = var.environment
    TerraformManaged = "true"
  }

}

