module "codepipeline-app-api" {
   source = "../modules/pipeline"
   environment = var.environment
   name = "${var.environment}-${var.project_name}-pip"
   aws_region = var.aws_region
   vpc_id = module.dev-vpc.id
   public_subnets = module.dev-vpc.public_subnets
   private_subnets = module.dev-vpc.private_subnets
   repository_in = "aw-birdgang/demo"
   codestar_connection_arn = module.codestar-connection.codestar_arn
   branch = var.environment
   codebuild_timeout = "30"
   codebuild_docker_file_path = "Dockerfile_dev"
   codebuild_docker_image_tag = "latest"
   codebuild_container_name = "demo-container"
   s3_bucket_name ="demo"
   aws_ecs_task_definition_name = "${var.environment}-${var.project_name}-ecs-task-def"
}
