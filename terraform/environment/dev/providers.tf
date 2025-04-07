# Default: Sharedアカウントにアクセスする際のプロバイダ設定
provider "aws" {
  region = "ap-northeast-1"
}

# MyChatbot-Devにアクセスする際のプロバイダ設定
provider "aws" {
  alias  = "my_chatbot_dev"
  region = "ap-northeast-1"
  assume_role {
    role_arn = data.terraform_remote_state.test.outputs.github_actions_oidc_role_arn
  }
}
