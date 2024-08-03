output "database_server_id" {
  description = "The ID of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.database_server.id
}

output "database_server_name" {
  description = "The name of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.database_server.name
}

output "database_server_fqdn" {
  description = "The fully qualified domain name of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.database_server.fqdn
}

output "database_server_administrator_login" {
  description = "The administrator login name of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.database_server.administrator_login
}

output "database_name" {
  description = "The name of the PostgreSQL Flexible Server database"
  value       = azurerm_postgresql_flexible_server_database.database.name
}

output "database_id" {
  description = "The ID of the PostgreSQL Flexible Server database"
  value       = azurerm_postgresql_flexible_server_database.database.id
}
