# Sharedアカウントにアクセスする際のプロバイダ設定
provider "aws" {
  region = "ap-northeast-1"
}

# MyChatbot-Devにアクセスする際のプロバイダ設定
provider "aws" {
  alias  = "my-chatbot-dev"
  region = "ap-northeast-1"
  assume_role {
    role_arn = var.my_chatbot_dev_assume_role_arn
  }
}
