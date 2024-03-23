# aws region
variable "aws_region" {
  description = "AWS region"
  type = string
  default = "ap-northeast-2"
}

# aws config
variable "aws_profile" {
  description = "for running terraform aws profile"
  type = string
}

# aws environment
variable "environment" {
  description = "for running terraform aws environment"
  type = string
  default = "dev"
}

# aws name
variable "project_name" {
  description = "for running terraform aws name"
  type = string
  default = "pay-api"
}
