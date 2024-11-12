resource "aws_ecr_repository" "apps_repository" {
  name                 = "apps-repository"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
