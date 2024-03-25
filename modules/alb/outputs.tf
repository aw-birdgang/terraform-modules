output "name" {
  value = aws_alb.alb.name
}

# The ALB ID.
output "id" {
  value = aws_alb.alb.id
}

# The ALB ARN.
output "arn" {
  value = aws_alb.alb.arn
}

# The ALB dns_name.
output "dns" {
  value = aws_alb.alb.dns_name
}

# The zone id of the ALB
output "zone_id" {
  value = aws_alb.alb.zone_id
}



# The ARN of the Target Group
output "target_group_arn" {
  value = aws_alb_target_group.alb_target_group.arn
}

#  The ARN suffix of the Target Group for use with CloudWatch Metrics.
output "target_group_arn_suffix" {
  value = aws_alb_target_group.alb_target_group.arn_suffix
}
