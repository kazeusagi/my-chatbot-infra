data "terraform_remote_state" "test" {
  backend = "s3"
  config = {
    bucket  = "kazeusagi-tfstate"
    key     = "my-chatbot/common/terraform.tfstate"
    region  = "ap-northeast-1"
    profile = "shared"
  }
}
