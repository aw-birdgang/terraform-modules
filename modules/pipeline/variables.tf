variable "environment" {
  description = "environment"
}

variable "name" {
  description = "name"
}

variable "codebuild_timeout" {
  description = "codebuild timeout"
}

variable "codebuild_docker_file_path" {
  description = "docker file path"
}

variable "codebuild_docker_image_tag" {
  description = "docker image tag"
}

variable "codebuild_container_name" {
  description = "container name"
}

variable "s3_bucket_name" {
  description = "s3 bucket name"
}

variable "aws_region" {
}

variable "public_subnets" {
  type = list
}

variable "private_subnets" {
  type = list
}

variable "vpc_id" {
}

variable "repository_in" {
}

variable "codestar_connection_arn" {
}

variable "branch" {
}

variable "aws_ecs_task_definition_name" {
  description = "aws ecs task definition name"
}
