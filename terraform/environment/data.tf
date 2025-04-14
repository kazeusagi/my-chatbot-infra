data "terraform_remote_state" "common_state" {
  backend = "s3"
  config = {
    bucket = "kazeusagi-tfstate"
    key    = "terraform-aws-template/bootstrap/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
