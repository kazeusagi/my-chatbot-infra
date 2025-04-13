data "terraform_remote_state" "shared" {
  backend = "s3"
  config = {
    bucket  = "kazeusagi-tfstate"
    key     = "shared/terraform.tfstate"
    region  = "ap-northeast-1"
    profile = "shared" # AWS CLIのプロファイル名
  }
}
