# シンボリックリンクで共通化しているプロバイダ設定
# 編集する際は注意してください。

# Default: Sharedアカウントにアクセスする際のプロバイダ設定
provider "aws" {
  region = "ap-northeast-1"
}

# MyChatbot-Devにアクセスする際のプロバイダ設定
provider "aws" {
  alias  = "my_chatbot_dev"
  region = "ap-northeast-1"
  assume_role {
    role_arn = local.my_chatbot_dev_role_arn
  }
}
