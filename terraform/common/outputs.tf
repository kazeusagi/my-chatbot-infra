output "github_actions_oidc_role_arn" {
  value       = module.my_chatbot_dev_role.role_arn
  description = "GithubActionsOIDCRoleのARN"
}
