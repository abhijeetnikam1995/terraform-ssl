resource "aws_route53_record" "apps_dns" {
  zone_id = data.aws_route53_zone.mydomain.zone_id 
  name    =  "${var.domain}.micros.abhijeet.ninja"
  type    = "A"
# ttl     = 300
  alias {
    name                   = var.alb
    zone_id                = var.zone_id
    evaluate_target_health = true
  }  
}


