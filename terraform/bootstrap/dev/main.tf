# 実行に必要な基礎となるリソースの作成を行う
module "terraform_aws_template_dev_role" {
  source     = "../../modules/iam_role"
  name       = "GithubActionsOIDCRole"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  allowed_assume_roles = [
    local.shared_github_actions_oidc_role_arn,
    "arn:aws:iam::491044523308:role/aws-reserved/sso.amazonaws.com/ap-northeast-1/AWSReservedSSO_AdministratorAccess_0ab0721b3f98291d",
    "arn:aws:iam::591924294321:role/aws-reserved/sso.amazonaws.com/ap-northeast-1/AWSReservedSSO_AdministratorAccess_5b241b5ec0f82c12"
  ]
}
