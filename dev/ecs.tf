module "ecs" {
  source = "../modules/ecs"
  environment = var.environment
  aws_region = var.aws_region
  name = "${var.environment}-${var.project_name}-ecs"

  vpc_id = module.vpc.id
  public_subnets = module.vpc.public_subnets

  aws_ecs_task_definition_name = "${var.environment}-${var.project_name}-ecs-task-def"
  repository_url = module.ecr.ecr_repository_url
  keypair = ""
  security_groups = []
  subnets = ""
  cluster_min_size = ""
  cluster_max_size = ""
  cluster_desired_capacity = ""
  instance_type = ""

  lb_listener_front_end = module.lb.front_end_arn
  lb_target_group_blue_id = module.lb.target_group_blue_id
}
