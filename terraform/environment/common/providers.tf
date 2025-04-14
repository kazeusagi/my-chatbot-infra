# シンボリックリンクで共通化しているプロバイダ設定です。
# MEMO: OIDCではprofileではなく、assume_roleを用いてアクセスを管理します。

# Default: TerraformAwsTemplate-Devにアクセスする際のプロバイダ設定
provider "aws" {
  region = "ap-northeast-1"
  assume_role {
    role_arn = data.terraform_remote_state.bootstrap.outputs.github_actions_oidc_role_arn
  }
}

# Sharedアカウントにアクセスする際のプロバイダ設定
provider "aws" {
  alias  = "shared"
  region = "ap-northeast-1"
  assume_role {
    role_arn = data.terraform_remote_state.shared.outputs.github_actions_oidc_role_arn
  }
}
