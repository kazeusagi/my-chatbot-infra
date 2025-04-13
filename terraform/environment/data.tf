data "terraform_remote_state" "common_state" {
  backend = "s3"
  config = {
    bucket  = "kazeusagi-tfstate"
    key     = "terraform-aws-template/common/terraform.tfstate"
    region  = "ap-northeast-1"
    profile = "shared"
  }
}
