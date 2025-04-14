# シンボリックリンクで共通化しているバージョン設定です。
# 編集する際は注意してください。
terraform {
  required_version = "1.11.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.93.0"
    }
  }
}
