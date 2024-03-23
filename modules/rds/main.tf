
# This defines a group of subnets within a VPC where the database instance will be located.
# It enables the database instance to communicate within a specific VPC.
resource "aws_db_subnet_group" "rds-subnet" {
  name = var.subnet_group_name
  description = "RDS subnet group"
  subnet_ids  = var.subnet_ids
#  subnet_ids  = [aws_subnet.main-private-1.id, aws_subnet.main-private-2.id]
  tags = {
    Name = "RDS subnet group"
  }
}

# This defines a parameter group for the database instance.
# The group allows for customization of the database engine configuration.
resource "aws_db_parameter_group" "rds-parameters" {
  name = "rds-parameters-group"
  family = "mariadb${var.engine_version}"# MariaDB 버전에 맞춰 설정
  description = "MariaDB parameter group"

  parameter {
    name  = "character_set_server"
    value = "utf8mb4"
  }

  parameter {
    name  = "max_allowed_packet"
    value = "16777216"
  }
}

# This defines an option group for the database instance.
# Option groups provide additional features and settings for specific database engines.
resource "aws_db_option_group" "example" {
  name = "option-group"
  engine_name = var.engine
  major_engine_version = var.engine_version # MariaDB 버전에 맞춰 설정
  option_group_description = "Example option group for MariaDB"
}

resource "random_password" "password" {
  length  = 16
  special = true
  override_special = "/@\" "
}

resource "aws_db_instance" "example_rds" {
  engine = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class # use micro if you want to use the free tier
  identifier = var.identifier
  db_name = var.db_name
  username = var.username # username
#  password = random_password.password.result
  password = var.password # password
  allocated_storage = var.allocated_storage # 20 GB of storage, gives us more IOPS than a lower number
  max_allocated_storage = var.max_allocated_storage
  # This is the identifier for the CA certificate to use. AWS periodically updates RDS CA certificates, and for security reasons, it's advisable to use the latest certificate.
  ca_cert_identifier = var.ca_cert_identifier
  publicly_accessible = var.publicly_accessible
  multi_az = var.multi_az # set to true to have high availability: 2 instances synchronized with each other
  vpc_security_group_ids  = var.vpc_security_group_ids
  storage_type = var.storage_type
  # This uses the name of the aws_db_subnet_group resource defined. It specifies the network location where the database instance will be placed.
  db_subnet_group_name = aws_db_subnet_group.rds-subnet.name
  #
#  parameter_group_name = aws_db_parameter_group.rds-parameters.name
#  option_group_name = aws_db_option_group.example.name
  backup_retention_period = var.backup_retention_period                                          # how long you’re going to keep your backups
  availability_zone = var.availability_zone
  skip_final_snapshot = true
  storage_encrypted = var.storage_encrypted # skip final snapshot when doing terraform destroy
  tags = {
    Name = var.rds_name
    TerraformManaged = "true"
  }
}