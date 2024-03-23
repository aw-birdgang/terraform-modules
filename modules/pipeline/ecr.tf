resource "aws_ecr_repository" "ecr-repository" {
  #(Required) Name of the repository.
  name = "ecr-${var.name}"
}
