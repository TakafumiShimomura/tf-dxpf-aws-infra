############################################################
## VPC
############################################################

## Variables ###############################################
variable "svc_vpc_name" { type = string }
variable "svc_vpc_cidr" { type = string }


## Resource ################################################
resource "aws_vpc" "svc" {
  cidr_block           = var.svc_vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = var.svc_vpc_name
  }
}


## Outputs #################################################
output "svc_vpc_id" {
  value = aws_vpc.svc.id
}
