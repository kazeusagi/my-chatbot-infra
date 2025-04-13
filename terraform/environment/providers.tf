# シンボリックリンクで共通化しているプロバイダ設定です。
# 編集する際は注意してください。
# また、localsの未定義エラーが出ることがありますが、リンク先でエラーが出ていなければ問題ありません。

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
