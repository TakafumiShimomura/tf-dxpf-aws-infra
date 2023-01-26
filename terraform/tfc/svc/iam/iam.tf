############################################################
## IAM
############################################################

## Variable ################################################
variable "tfc_iam_role_name" { type = string }


## Resouce #################################################
resource "aws_iam_role" "tfc" {
  name               = var.tfc_iam_role_name
  description        = "TFC test Role"
  assume_role_policy = file("policies/tfc-iam-role.json")

  tags = {
    Name = var.tfc_iam_role_name
  }
}

