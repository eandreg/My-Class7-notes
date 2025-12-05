resource "aws_sns_topic" "asg-actions" {
  name = "asg-actions-topic"
}

resource "aws_sns_topic_subscription" "asg-actions" {
  topic_arn = aws_sns_topic.asg-actions.arn
  protocol  = "email"
  endpoint  = "southrakkascrew@gmail.com"
}

resource "aws_autoscaling_notification" "asg-actions" {
  group_names = [
    aws_autoscaling_group.terraform-asg.name,
  ]

  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]

  topic_arn = aws_sns_topic.asg-actions.arn
}
