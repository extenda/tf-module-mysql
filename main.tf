resource "mysql_database" "my_db" {
  name     = var.db_name
  instance = var.instance
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "mysql_user" "db_user" {
  user               = var.user
  host               = var.host
  plaintext_password = random_password.password.result
}

resource "mysql_grant" "my_grant" {
  user       = mysql_user.db_user.user
  host       = var.host
  database   = mysql_database.my_db.name
  privileges = ["ALL"]
}
