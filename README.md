## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.114.0 |

## Modules

No modules.

## Usage

```
module "database" {
  source                    = "github.com/things4Ops/terraform-azurerm-flexible-db//flexibleServerDb"
  env_name                  = var.env_name
  resource_location         = var.resource_location
  resource_group_name       = var.resource_group_name
  db_administrator_password = var.db_administrator_password
  db_sku_name               = var.db_sku_name
  product_name              = var.product_name
}
```

## Resources

| Name | Type |
|------|------|
| [azurerm_postgresql_flexible_server.database_server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server) | resource |
| [azurerm_postgresql_flexible_server_database.database](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_administrator_login"></a> [db\_administrator\_login](#input\_db\_administrator\_login) | administrator login user | `string` | `"fchsadmin"` | no |
| <a name="input_db_administrator_password"></a> [db\_administrator\_password](#input\_db\_administrator\_password) | db db\_administrator\_password | `string` | `"as^*=ncj3rsg2"` | no |
| <a name="input_db_auto_grow_enabled"></a> [db\_auto\_grow\_enabled](#input\_db\_auto\_grow\_enabled) | db\_auto\_grow\_enabled | `bool` | `false` | no |
| <a name="input_db_backup_retention_days"></a> [db\_backup\_retention\_days](#input\_db\_backup\_retention\_days) | db\_backup\_retention\_days | `number` | `14` | no |
| <a name="input_db_geo_redundant_backup_enabled"></a> [db\_geo\_redundant\_backup\_enabled](#input\_db\_geo\_redundant\_backup\_enabled) | db\_geo\_redundant\_backup\_enabled | `bool` | `false` | no |
| <a name="input_db_high_availability"></a> [db\_high\_availability](#input\_db\_high\_availability) | db high availability | `string` | `"SameZone"` | no |
| <a name="input_db_pg_database_version"></a> [db\_pg\_database\_version](#input\_db\_pg\_database\_version) | Database version | `number` | `14` | no |
| <a name="input_db_public_network_access_enabled"></a> [db\_public\_network\_access\_enabled](#input\_db\_public\_network\_access\_enabled) | Database public access | `bool` | `true` | no |
| <a name="input_db_sku_name"></a> [db\_sku\_name](#input\_db\_sku\_name) | db sku name | `string` | `"B_Standard_B1ms"` | no |
| <a name="input_db_storage_mb"></a> [db\_storage\_mb](#input\_db\_storage\_mb) | db storage\_mb | `number` | `32768` | no |
| <a name="input_db_zone"></a> [db\_zone](#input\_db\_zone) | db zone | `number` | `1` | no |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | Name of Env | `string` | `"test"` | no |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Name of Product | `string` | `"test"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of rg | `string` | `"test"` | no |
| <a name="input_resource_location"></a> [resource\_location](#input\_resource\_location) | Name of region | `string` | `"eastus2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_id"></a> [database\_id](#output\_database\_id) | The ID of the PostgreSQL Flexible Server database |
| <a name="output_database_name"></a> [database\_name](#output\_database\_name) | The name of the PostgreSQL Flexible Server database |
| <a name="output_database_server_administrator_login"></a> [database\_server\_administrator\_login](#output\_database\_server\_administrator\_login) | The administrator login name of the PostgreSQL Flexible Server |
| <a name="output_database_server_fqdn"></a> [database\_server\_fqdn](#output\_database\_server\_fqdn) | The fully qualified domain name of the PostgreSQL Flexible Server |
| <a name="output_database_server_id"></a> [database\_server\_id](#output\_database\_server\_id) | The ID of the PostgreSQL Flexible Server |
| <a name="output_database_server_name"></a> [database\_server\_name](#output\_database\_server\_name) | The name of the PostgreSQL Flexible Server |
