output "vpc_id" {
  description = "The ID of the VPC"
  value       = yandex_vpc_network.vpc.id
}

output "subnets_locations" {
  description = "Mapping Subnet Name to Subnet ID"
  value       = zipmap(values(yandex_vpc_subnet.vpc_subnets)[*].name, values(yandex_vpc_subnet.vpc_subnets)[*].id)
}

output "map_zone_id" {
  description = "Mapping Zone to Subnet ID"
  value       = zipmap(values(yandex_vpc_subnet.vpc_subnets)[*].zone, values(yandex_vpc_subnet.vpc_subnets)[*].id)
}

