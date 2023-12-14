terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}

resource "null_resource" "test" {
  count = 10000
  triggers = {
    always_run = var.always_run
  }
}

variable "always_run" {
  type    = number
  default = 4
}
