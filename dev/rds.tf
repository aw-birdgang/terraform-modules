module "database" {
    environment = var.environment
    name = "${var.environment}-${var.project_name}-rds"
    source = "../modules/rds"
    rds_name = "${var.environment}-${var.project_name}-rds"
    engine = "mariadb"
    engine_version = "10.11"
    instance_class = "db.t3.micro"
    multi_az = "false"
    identifier = "mariadb"
    username = "admin"           # username
    password = "qwer1234!"
    db_name = "payments"
    storage_type = "gp2"
    allocated_storage = 20
    max_allocated_storage = 100
    subnet_group_name = "${var.environment}-${var.project_name}-rds-subnet"
    backup_retention_period = 7
    skip_final_snapshot = true
    publicly_accessible = true
    storage_encrypted = true
    aws_region = var.aws_region
    vpc_id = module.vpc.id

#    vpc_security_group_ids = module.security-group.vpc_rds_security_group_ids
    vpc_security_group_ids = module.security-group.vpc_rds_security_group_ids_everyone
#    subnet_ids  = [module.dev-example-vpc.private_1_id, module.dev-example-vpc.private_2_id, module.dev-example-vpc.private_3_id]
    subnet_ids  = [module.vpc.public_1_id, module.vpc.public_2_id, module.vpc.public_3_id]
#    availability_zone = module.dev-example-vpc.private_1_availability_zone
     availability_zone = module.vpc.public_1_availability_zone
 }
