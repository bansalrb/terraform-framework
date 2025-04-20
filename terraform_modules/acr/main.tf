resource "aws_ecr_repository" "my_ecr" {
  name                 = var.ecr_name
  image_scanning_configuration {
    scan_on_push = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

output "repository_url" {
  value = aws_ecr_repository.my_ecr.repository_url
}
