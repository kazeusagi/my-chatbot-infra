locals {
  my_chatbot_dev_role_arn = data.terraform_remote_state.common_state.outputs.github_actions_oidc_role_arn
}
