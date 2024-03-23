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

