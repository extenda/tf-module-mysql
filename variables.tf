# Provider Variables
variable endpoint {
  type        = string
  description = "The address for the MySQL server connection"
}

variable password {
  type        = string
  description = "Password for the server connection"
}

variable port {
  type        = string
  default     = 3306
  description = "The port for the MySQL server connection. The default is 3306"
}

variable username {
  type        = string
  default     = "default"
  description = "Username for the server connection. The default is default"
}

# Database Variables
variable db_name {
  type        = string
  description = "The name of the database to be created"
}
