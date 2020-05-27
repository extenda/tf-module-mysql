resource "mysql_database" "my_db" {
  name = var.db_name
}

resource "random_password" "password" {
  count            = var.role_password != "" ? 0 : 1
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "mysql_user" "db_user" {
  user               = var.user
  host               = var.host
  plaintext_password = random_password.password
}

resource "mysql_grant" "my_grant" {
  user       = mysql_user.db_user.user
  host       = mysql_user.db_user.host
  database   = mysql_database.my_db.name
  privileges = ["ALL"]
}
