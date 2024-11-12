# set github repo secrets
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
