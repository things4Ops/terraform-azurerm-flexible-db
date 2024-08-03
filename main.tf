resource "azurerm_postgresql_flexible_server" "database_server" {
  name                          = "${var.env_name}-db-server"
  resource_group_name           = var.resource_group_name
  location                      = var.resource_location
  version                       = var.db_pg_database_version
  public_network_access_enabled = var.db_public_network_access_enabled
  administrator_login           = var.db_administrator_login
  administrator_password        = var.db_administrator_password
  zone                          = var.db_zone
  backup_retention_days         = var.db_backup_retention_days
  geo_redundant_backup_enabled  = var.db_geo_redundant_backup_enabled

  storage_mb        = var.db_storage_mb
  sku_name          = var.db_sku_name
  auto_grow_enabled = var.db_auto_grow_enabled
  tags = {
    environment = var.env_name,
    product     = var.product_name
  }
}

resource "azurerm_postgresql_flexible_server_database" "database" {
  name      = "${var.env_name}-database"
  server_id = azurerm_postgresql_flexible_server.database_server.id
  collation = "en_US.utf8"
  charset   = "utf8"

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}