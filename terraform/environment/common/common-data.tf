# data.tfはルートモジュール毎に定義される可能性があるため、
# common-data.tfという名前にして衝突を防ぐ
data "terraform_remote_state" "bootstrap" {
  backend = "s3"
  config = {
    bucket = "kazeusagi-tfstate"
    key    = "terraform-aws-template/bootstrap/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
