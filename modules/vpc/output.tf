# The ID of the VPC
output "id" {
  value = aws_vpc.vpc-terraform.id
}

# The CIDR block of the VPC
output "cidr_block" {
  value = aws_vpc.vpc-terraform.cidr_block
}

output "public_1_id" {
  value = aws_subnet.public-subnet-1.id
}

output "public_2_id" {
  value = aws_subnet.public-subnet-2.id
}

output "public_3_id" {
  value = aws_subnet.public-subnet-3.id
}

output "private_1_id" {
  value = aws_subnet.private-subnet-1.id
}

output "private_2_id" {
  value = aws_subnet.private-subnet-2.id
}

output "private_3_id" {
  value = aws_subnet.private-subnet-3.id
}

output "public_1_availability_zone" {
  value = aws_subnet.public-subnet-1.availability_zone
}

output "private_1_availability_zone" {
  value = aws_subnet.private-subnet-1.availability_zone
}

output "public_subnets" {
  value = [aws_subnet.public-subnet-1.id, aws_subnet.public-subnet-2.id, aws_subnet.public-subnet-3.id]
}

output "private_subnets" {
  value = [aws_subnet.private-subnet-1.id, aws_subnet.private-subnet-2.id, aws_subnet.private-subnet-3.id]
}

## The list of availability zones of the VPC.
#output "availability_zones" {
#  value = data.aws_availability_zones.main.names
#}
#
## security groups
#output "security_group_default" {
#  value = aws_default_security_group.main.id
#}
#
#output "security_group_ephemeral_ports" {
#  value = aws_security_group.ephemeral_ports.id
#}
#
#output "security_group_bastion" {
#  value = aws_security_group.bastion.id
#}
#
#output "security_group_public_web" {
#  value = aws_security_group.public_web.id
#}
#
