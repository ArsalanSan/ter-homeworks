terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.13"
}

resource "yandex_vpc_network" "vpc_network" {
  name = var.vpc_name_network
}

resource "yandex_vpc_subnet" "vpc_subnet" {
  name           = var.vpc_name_subnet
  zone           = var.vpc_zone
  network_id     = yandex_vpc_network.vpc_network.id
  v4_cidr_blocks = var.vpc_subnet_cidr
}
