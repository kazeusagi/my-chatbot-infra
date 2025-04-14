output "test" {
  value = data.terraform_remote_state.common_state.outputs.github_actions_oidc_role_arn
}
