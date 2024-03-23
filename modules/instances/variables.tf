variable "environment" {
}

variable "name" {
  description = "name"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "public_subnets" {
  type = list
}

variable "vpc_id" {
}

variable "key_pair_name" {
  description = "key-pair"
}

variable "vpc_security_group_ids" {
  description = "vpc_security_group_ids"
}
