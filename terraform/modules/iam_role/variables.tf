variable "name" {
  type        = string
  description = "IAMロールの名前"
}

variable "policy_arn" {
  type        = string
  description = "IAMロールにアタッチするポリシーのARN"
}

variable "identifier" {
  type        = string
  description = "IAMロールの信頼ポリシーに指定するAWSアカウントID"
}
