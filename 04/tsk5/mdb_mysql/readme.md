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
| [yandex_mdb_mysql_cluster.mysql_cluster](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/mdb_mysql_cluster) | resource |
| [yandex_vpc_subnet.develop](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_HA"></a> [HA](#input\_HA) | False - 1 host, true - 3 hosts | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Cluster name | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | Network ID | `string` | n/a | yes |
| <a name="input_one_host"></a> [one\_host](#input\_one\_host) | Network default value for singl host | `map(string)` | <pre>{<br>  "ru-central1-a": "10.0.1.0/24"<br>}</pre> | no |
| <a name="input_three_hosts"></a> [three\_hosts](#input\_three\_hosts) | Network default value for more hosts | `map(string)` | <pre>{<br>  "ru-central1-a": "10.0.1.0/24",<br>  "ru-central1-b": "10.0.2.0/24"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | n/a |
