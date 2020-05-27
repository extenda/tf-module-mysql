provider mysql {
  endpoint = "${var.endpoint}:${var.port}"
  username = var.username
  password = var.password
}
