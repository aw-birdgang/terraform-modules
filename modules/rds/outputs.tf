output "subnet_group" {
  value = aws_db_subnet_group.rds-subnet.name
}

output "db_instance_id" {
  value = aws_db_instance.example_rds.identifier
}

output "db_instance_address" {
  value = aws_db_instance.example_rds.address
}

output "endpoint" {
  value = aws_db_instance.example_rds.endpoint
}
