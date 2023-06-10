resource "aws_lb_listener_certificate" "example" {
#certificate_arn = var.cert_arn
certificate_arn = data.aws_acm_certificate.amazon_issued.arn
listener_arn = data.aws_lb_listener.selected443.arn 
}
