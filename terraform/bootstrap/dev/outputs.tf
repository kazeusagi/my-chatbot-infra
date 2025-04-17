output "github_actions_oidc_role_arn" {
  value       = module.terraform_aws_template_dev_role.role_arn
  description = "GithubActionsOIDCRoleのARN"
}
