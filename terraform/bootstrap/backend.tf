terraform {
  backend "s3" {
    region  = "ap-northeast-1"
    bucket  = "kazeusagi-tfstate"
    key     = "my-chatbot/common/terraform.tfstate"
    profile = "shared" # AWS CLIのプロファイル名
  }
}
