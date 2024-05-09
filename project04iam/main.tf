variable "names" {
  default = ["hari", "om", "rohit"]
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.21.0"
    }
  }
}

resource "aws_iam_user" "my_iam_users" {
  for_each = toset(var.names)
  name = each.value
}
