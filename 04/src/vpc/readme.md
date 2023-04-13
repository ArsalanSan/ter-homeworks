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
| [yandex_vpc_network.vpc](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.vpc_subnets](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `"vpc"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Create zones && subnets | <pre>list(object(<br>    {<br>      zone = string<br>      cidr = string<br>    })<br>  )</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_map_zone_id"></a> [map\_zone\_id](#output\_map\_zone\_id) | Mapping Zone to Subnet ID |
| <a name="output_subnets_locations"></a> [subnets\_locations](#output\_subnets\_locations) | Mapping Subnet Name to Subnet ID |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
