terraform {
  backend "s3" {
    region  = "ap-northeast-1"
    bucket  = "kazeusagi-tfstate"
    key     = "terraform-aws-template/dev/terraform.tfstate"
    profile = "shared"
  }
}
