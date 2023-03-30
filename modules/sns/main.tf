# main.tf


variable "topic_name" {
  type = string
}

variable "subscriptions" {
  type = set(string)
}

resource "aws_sns_topic" "topic_name" {
  name = var.topic_name
  enable_encryption = true
}

resource "aws_sns_topic_subscription" "subscription_name" {
  for_each = var.subscriptions

  topic_arn = aws_sns_topic.topic_name.arn
  protocol = "email"
  endpoint = each.value
}

output topi_arn {
  value = aws_sns_topic.topic_name.arn
}
