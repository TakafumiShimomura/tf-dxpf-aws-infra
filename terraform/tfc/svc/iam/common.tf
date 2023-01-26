############################################################
## Common
############################################################

## Environment #############################################
variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}

variable "environment" {
  type    = string
  default = "tfc"
}

locals {
  ## NOTE: タグ定義が決定次第デフォルトタグを設定する
  common_tags = {
      Environment = var.environment
  }
}

