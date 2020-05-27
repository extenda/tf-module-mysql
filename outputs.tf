output user {
  description = "The name of the user"
  value       = var.user
}

output password {
  description = "The password for the created user"
  value       = random_password.password.result
  sensitive   = true
}

output db_name {
  description = "The name of the database"
  value       = var.db_name
}
