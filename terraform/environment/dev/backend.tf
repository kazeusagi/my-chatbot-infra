terraform {
  backend "s3" {
    region = "ap-northeast-1"
    bucket = "kazeusagi-tfstate"
    key    = "my-chatbot/dev/terraform.tfstate"
    # profile = "shared"
  }
}
