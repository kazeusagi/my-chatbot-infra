# 実行に必要な基礎となるリソースの作成を行う
module "my_chatbot_dev_role" {
  source     = "../modules/iam_role"
  name       = "GithubActionsOIDCRole"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  identifier = local.shared_github_actions_oidc_role_arn
}
