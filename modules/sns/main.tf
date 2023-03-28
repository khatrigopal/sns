# main.tf

variable "topic_name" {
  type = string
}

variable "subscriptions" {
  type = set(string)
}

resource "aws_sns_topic" "topic" {
  name = var.topic_name
}

resource "aws_sns_topic_subscription" "subscription" {
  for_each = var.subscriptions

  topic_arn = aws_sns_topic.topic.arn
  protocol = "email"
  endpoint = each.value
}
