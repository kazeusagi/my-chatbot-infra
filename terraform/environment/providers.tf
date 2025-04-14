# シンボリックリンクで共通化しているプロバイダ設定です。
# MEMO: OIDCではprofileではなく、assume_roleを用いてアクセスを管理します。
#       またbackend.tfではproviderを指定できないないので、デフォルトプロバイダがsharedに疎通できるように設定します。

# Default: Sharedアカウントにアクセスする際のプロバイダ設定
provider "aws" {
  region = "ap-northeast-1"
}

# TerraformAwsTemplate-Devにアクセスする際のプロバイダ設定
provider "aws" {
  alias  = "terraform_aws_template_dev"
  region = "ap-northeast-1"
  assume_role {
    role_arn = data.terraform_remote_state.common_state.outputs.github_actions_oidc_role_arn
  }
}
