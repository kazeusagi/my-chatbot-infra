locals {
  shared_github_actions_oidc_role_arn = data.terraform_remote_state.shared.outputs.github_actions_oidc_role_arn
}
