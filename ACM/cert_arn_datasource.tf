data "aws_acm_certificate" "amazon_issued" {
  domain      = var.domain
  types       = ["AMAZON_ISSUED"]
  most_recent = true
}


output "cert_arn" {
  description = " The Hosted Zone name of the desired Hosted Zone."
  value = data.aws_acm_certificate.amazon_issued.arn
}

