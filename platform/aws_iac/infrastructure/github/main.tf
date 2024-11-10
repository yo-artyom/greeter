provider "github" {
  token = var.github_token
}

variable "github_token" {
  description = "GitHub Personal Access Token for managing secrets"
  type        = string
}

variable "github_repository" {
  description = "GitHub repository name (e.g., user/repo)"
  type        = string
}

variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "aws_account_id" {
  description = "AWS Secret Access Key"
  type        = string
}

resource "github_actions_secret" "aws_access_key_id" {
  repository = var.github_repository
  secret_name = "AWS_ACCESS_KEY_ID"
  plaintext_value = var.aws_access_key_id
}

resource "github_actions_secret" "aws_secret_access_key" {
  repository = var.github_repository
  secret_name = "AWS_SECRET_ACCESS_KEY"
  plaintext_value = var.aws_secret_access_key
}

resource "github_actions_secret" "aws_account_id" {
  repository = var.github_repository
  secret_name = "AWS_ACCOUNT_ID"
  plaintext_value = var.aws_account_id
}
