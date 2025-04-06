# 実行に必要な基礎となるリソースの作成を行う
module "iam_role" {
  source                = "../modules/iam-oidc/role"
  iam_oidc_provider_arn = module.iam_oidc_provider.arn
  repos                 = ["repo:kazeusagi/my-chatbot-infra:ref:refs/heads/main"]
  policy_arn            = "arn:aws:iam::aws:policy/AdministratorAccess"
}
