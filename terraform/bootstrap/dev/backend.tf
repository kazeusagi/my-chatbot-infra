terraform {
  backend "s3" {
    region  = "ap-northeast-1"
    bucket  = "kazeusagi-tfstate"
    key     = "terraform-aws-template/bootstrap/terraform.tfstate"
    profile = "shared" # AWS SSOのプロファイル名
  }
}
