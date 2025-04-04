terraform {
  backend "s3" {
    region  = "ap-northeast-1"
    bucket  = "kazeusagi-tfstate"
    key     = "dev/my-chatbot/terraform.tfstate"
    profile = "shared"
  }
}
