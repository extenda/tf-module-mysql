terraform {
  required_providers {
    mysql = {
      source = "terraform-providers/mysql"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

provider mysql {
  endpoint       = "${var.endpoint}:${var.port}"
  username       = var.username
  password       = var.password
  max_open_conns = var.max_open_conns
}
