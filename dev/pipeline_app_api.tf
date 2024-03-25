module "codepipeline-app-api" {
   source = "../modules/pipeline"
   environment = var.environment
   name = "${var.environment}-${var.project_name}-pip"
   aws_region = var.aws_region
   vpc_id = module.vpc.id
   public_subnets = module.vpc.public_subnets
   private_subnets = module.vpc.private_subnets
   repository_in = "aw-birdgang/demo"
   codestar_connection_arn = module.codestar-connection.codestar_arn
   branch = var.environment
   codebuild_timeout = "30"
   codebuild_docker_file_path = "Dockerfile_dev"
   codebuild_docker_image_tag = "latest"
   codebuild_container_name = "demo-container"
   s3_bucket_name = "${var.environment}-${var.project_name}=bucket"
   aws_ecs_task_definition_name = "${var.environment}-${var.project_name}-ecs-task-def"
   ecr_repository_name = module.ecr.ecr_repository_name
   ecr_repository_url = module.ecr.ecr_repository_url

   ecs_cluster_name = module.ecs.ecs_cluster_name
   ecs_service_name = module.ecs.service_name
   ecs_task_execution_role_arn = module.ecs.ecs_task_execution_role_arn
   ecs_task_role_arn = module.ecs.ecs_task_role_arn

   front_end_arn = module.lb.front_end_arn
   target_group_blue_name = module.lb.target_group_blue_name
   target_group_green_name = module.lb.target_group_green_name

   s3_artifacts_bucket = module.s3.s3_artifacts_bucket
   s3_artifacts_arn = module.s3.s3_artifacts_arn
   codebuild_cache_arn = module.s3.codebuild_cache_arn


}
