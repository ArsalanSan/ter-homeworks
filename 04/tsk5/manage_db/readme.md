## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >=0.89.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >=0.89.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_mdb_mysql_database.db](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/mdb_mysql_database) | resource |
| [yandex_mdb_mysql_user.user_db](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/mdb_mysql_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | ID manager cluster | `string` | n/a | yes |
| <a name="input_name_db"></a> [name\_db](#input\_name\_db) | Name DB | `string` | n/a | yes |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | User name for DB | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_id"></a> [db\_id](#output\_db\_id) | n/a |
| <a name="output_user_db_id"></a> [user\_db\_id](#output\_user\_db\_id) | n/a |
