
output "vpc_network_id" {  
  value = yandex_vpc_network.vpc_network.id
  description = "Print network id"
}

output "vpc_subnet_id" {
  value = yandex_vpc_subnet.vpc_subnet.id
  description = "Print subnet id"
}

