data "aws_acm_certificate" "amazon_issued" {
  domain      = var.domain
  types       = ["AMAZON_ISSUED"]
  most_recent = true
}


output "cert_arn" {
  description = " The Hosted Zone name of the desired Hosted Zone."
  value = data.aws_acm_certificate.amazon_issued.arn
}

data "aws_lb_listener" "selected443" {
load_balancer_arn = var.alb_arn
#  load_balancer_arn = data.aws_lb.selected.arn
#  load_balancer_arn = "arn:aws:elasticloadbalancing:us-east-1:502447419870:loadbalancer/app/Web-QA-alb/d2719e095ca4ae2a"
  port              = 443
}

output "listener_arn" {
  description = " ARN of listener"
  value = data.aws_lb_listener.selected443.arn
}










/*



data "aws_lb" "selected" {
  arn = var.alb_arn
// overwrite Prod ALB name
}

output "lb_arn" {
  description = " ARN of ALB"
  value = data.aws_lb.selected.arn
}


*/







