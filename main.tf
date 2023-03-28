# my_config.tf

module "sns_topic" {
  source = "./modules/sns"

  topic_name = "my-topic"
  subscriptions = [
    "email1@example.com",
    "email2@example.com",
    "email3@example.com"
  ]
}
