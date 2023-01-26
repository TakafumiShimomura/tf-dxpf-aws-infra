############################################################
## Common
############################################################

## Variables ###############################################
variable "environment" {type = string}


## Environment #############################################
variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}

locals {
  common_tags = {
    Environment = var.environment
  }
}
