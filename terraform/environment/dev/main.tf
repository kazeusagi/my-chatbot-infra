module "sqs" {
  source = "../../modules/sqs"
  name   = "dev-queue"
  providers = {
    aws = aws.my_chatbot_dev
  }
}
