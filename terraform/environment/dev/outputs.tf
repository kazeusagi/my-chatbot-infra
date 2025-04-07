output "test" {
  value = data.terraform_remote_state.test.outputs.github_actions_oidc_role_arn
}
