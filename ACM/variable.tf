variable "domain" {
  description = "domain Name"
  type = string 
  default = ""
}


variable "cert_arn" {
  description = "ARN of Certificate "
  type = string
  default = ""
}

variable "listener_arn" {
  description = "ARN of listener"
  type = string
  default = ""
}


variable "alb" {
  description = "DNS of ALB"
  type = string
  default = ""
}

variable "zone_id" {
  description = "zone id of load balancer"
  type = string
  default = ""
}

