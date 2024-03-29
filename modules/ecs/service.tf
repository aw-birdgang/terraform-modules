## create an ecs service
#resource "aws_ecs_task_definition" "ecs_task_definition" {
#  #(Required) A unique name for your task definition.
#  family = var.name
#  #(Required) A list of valid container definitions provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document.
#  container_definitions = file("task-definitions/${var.name}.json")
#  task_role_arn = var.task_role_arn
#}
#
#resource "aws_ecs_service" "ecs_service" {
#  name            = var.name
#  cluster         = var.cluster_id
#  task_definition = aws_ecs_task_definition.ecs_task_definition.arn
#  desired_count   = var.desired_count
#  iam_role        = data.terraform_remote_state.remote_state.outputs.iam_role_ecs_service_role_arn
#
#  ordered_placement_strategy {
#    type  = "spread"
#    field = "instanceId"
#  }
#
#  load_balancer {
#    target_group_arn = aws_alb_target_group.alb_target_group.arn
#    container_name   = var.name
#    container_port   = var.container_port
#  }
#}
#
#resource "aws_alb_target_group" "alb_target_group" {
#  name     = "ecs-${var.name}"
#  port     = var.container_port
#  protocol = "HTTP"
#  vpc_id   = var.vpc_id
#
#  health_check {
#    path = var.health_check_path
#  }
#}
#
### global terraform
#data "terraform_remote_state" "remote_state" {
#  backend = "s3"
#
#  config = {
#    bucket     = "kr.sideeffect.terraform.state"
#    key        = "global/terraform.tfstate"
#    region     = "ap-northeast-2"
#    encrypt    = true
#    dynamodb_table = "SideEffectTerraformStateLock"
#    acl        = "bucket-owner-full-control"
#  }
#}
#
