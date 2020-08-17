# Provider Variables
variable endpoint {
  type        = string
  default     = "localhost"
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
variable max_open_conns {
  type        = string
  default     = -1
  description = "How many concurrent connections can be established to this database. -1 (the default) means no limit."
}

# Database Variables
variable instance {
  type        = string
  description = "The name of the Cloud SQL instance. This does not include the project ID"
}

variable db_name {
  type        = string
  description = "The name of the database to be created"
}

variable user {
  type = string
  description = "The name of the user"
}

variable host {
  type        = string
  default     = "%"
  description = "The source host of the user"
}
