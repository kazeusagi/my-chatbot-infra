variable "name" {
  type        = string
  description = "IAMロールの名前"
}

variable "policy_arn" {
  type        = string
  description = "IAMロールにアタッチするポリシーのARN"
}

variable "allowed_assume_roles" {
  type        = list(string)
  description = "IAMロールの信頼ポリシーに指定するAWSアカウントID"
}
