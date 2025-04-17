# このbootstrapは手動で実行することを想定しています。
# そのため、assume_roleは使用せず、profileを指定してアクセスを管理します。
# backend.tfではprofileが指定可能なので、デフォルトプロバイダは自由に設定できます。

# Default: TerraformAwsTemplate-Devにアクセスする際のプロバイダ設定
provider "aws" {
  region  = "ap-northeast-1"
  profile = "admin"
}

# Sharedアカウントにアクセスする際のプロバイダ設定
provider "aws" {
  alias   = "terraform_aws_template_dev"
  region  = "ap-northeast-1"
  profile = "shared"
}
