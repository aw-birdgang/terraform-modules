output "ecs_cluster_id" {
  value = aws_ecs_cluster.ecs_cluster.id
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.ecs_cluster.name
}

output "ecs_task_execution_role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}

output "ecs_task_role_arn" {
  value = aws_iam_role.ecs_task_role.arn
}

############################## CLUSTER ####################

# The Amazon Resource Name (ARN) that identifies the cluster
output "cluster_id" {
  value = aws_ecs_cluster.ecs_cluster.id
}

# The name of the cluster
output "cluster_name" {
  value = aws_ecs_cluster.ecs_cluster.name
}

# The ID of the launch configuration.
output "launch_configuration_id" {
  value = aws_launch_configuration.launch_configuration.id
}

# The name of the launch configuration.
output "launch_configuration_name" {
  value = aws_launch_configuration.launch_configuration.name
}

# The autoscaling group id.
output "autoscaling_group_id" {
  value = aws_autoscaling_group.autoscaling_group.id
}

# The ARN for this AutoScaling Group
output "autoscaling_group_arn" {
  value = aws_autoscaling_group.autoscaling_group.arn
}

# The availability zones of the autoscale group.
output "autoscaling_group_availability_zones" {
  value = aws_autoscaling_group.autoscaling_group.availability_zones
}

# The minimum size of the autoscale group
output "autoscaling_group_min_size" {
  value = aws_autoscaling_group.autoscaling_group.min_size
}

# The maximum size of the autoscale group
output "autoscaling_group_max_size" {
  value = aws_autoscaling_group.autoscaling_group.max_size
}

# The number of Amazon EC2 instances that should be running in the group.
output "autoscaling_group_desired_capacity" {
  value = aws_autoscaling_group.autoscaling_group.desired_capacity
}






############################## SERVICE ####################

# The service ID.
output "service_id" {
  value = aws_ecs_service.ecs_service.id
}

# The service name.
output "service_name" {
  value = aws_ecs_service.ecs_service.name
}

# The ARN of cluster which the service runs on.
output "cluster" {
  value = aws_ecs_service.ecs_service.cluster
}

# The ARN of IAM role used for ELB
output "iam_role" {
  value = aws_ecs_service.ecs_service.iam_role
}

# The number of instances of the task definition
output "desired_count" {
  value = aws_ecs_service.ecs_service.desired_count
}
