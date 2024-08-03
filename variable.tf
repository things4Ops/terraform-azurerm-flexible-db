variable "env_name" {
  description = "Name of Env"
  type        = string
  default     = "test"
  validation {
    condition     = length(var.env_name) < 5 && can(regex("[[:lower:]]", var.env_name))
    error_message = "The env_name value must be a less then 5 char abd have lower case"
  }
}

variable "product_name" {
  description = "Name of Product"
  type        = string
  default     = "test"
  validation {
    condition     = length(var.product_name) < 20 && can(regex("[[:lower:]]", var.product_name))
    error_message = "The product_name value must be a less then 10 char abd have lower case"
  }
}

variable "resource_location" {
  description = "Name of region"
  type        = string
  default     = "eastus2"
}

variable "resource_group_name" {
  description = "Name of rg"
  type        = string
  default     = "test"
}

##### DB Config #####
variable "db_pg_database_version" {
  description = "Database version"
  type        = number
  default     = 14
}

variable "db_public_network_access_enabled" {
  description = "Database public access"
  type        = bool
  default     = true # Security
}

variable "db_administrator_login" {
  description = "administrator login user"
  type        = string
  default     = "fchsadmin"
}
variable "db_administrator_password" {
  description = "db db_administrator_password"
  type        = string
  sensitive   = true
  default     = "as^*=ncj3rsg2"
}

variable "db_zone" {
  description = "db zone"
  type        = number
  default     = 1
}

variable "db_storage_mb" {
  description = "db storage_mb"
  type        = number
  default     = 32768
}

variable "db_sku_name" {
  description = "db sku name"
  type        = string
  default     = "B_Standard_B1ms"
}

variable "db_high_availability" {
  description = "db high availability"
  type        = string
  default     = "SameZone"
}


variable "db_auto_grow_enabled" {
  description = "db_auto_grow_enabled "
  type        = bool
  default     = false
}

variable "db_backup_retention_days" {
  description = "db_backup_retention_days"
  type        = number
  default     = 14
}
variable "db_geo_redundant_backup_enabled" {
  description = "db_geo_redundant_backup_enabled"
  type        = bool
  default     = false
}