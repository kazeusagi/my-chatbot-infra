module "sqs" {
  source = "../../modules/sqs"
  name   = "dev-queue"
  providers = {
    aws = aws.my_chatbot_dev
  }
}

module "sqs" {
  source = "../../modules/sqs"
  name   = "dev-queue-2"
  providers = {
    aws = aws.my_chatbot_dev
  }
}
