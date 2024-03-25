#
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

#
resource "aws_instance" "instance" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = element(var.public_subnets, 0)
  vpc_security_group_ids = var.vpc_security_group_ids
  # the public SSH key
  key_name = aws_key_pair.example-key.key_name
  user_data = <<EOF
{
  #! /bin/bash
  sudo apt-get update
  sudo apt install mysql-client-core-5.7
  sudo apt install mariadb-client-core-10.1
  echo "<h1>install mysql-client-core 5.7 & mariadb-client-core 10.1</h1>"
}
EOF

  tags = {
    Name = "${var.environment}-${var.name}-ec2"
    Environmnent = var.environment
    TerraformManaged = "true"
  }
}

#
resource "aws_key_pair" "example-key" {
  key_name   = "${var.key_pair_name}-${var.environment}"
  public_key = file("${path.root}/../key/${var.key_pair_name}-${var.environment}.pub")
}

