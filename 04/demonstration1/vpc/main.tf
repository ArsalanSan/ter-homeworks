terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = ">=0.99.0"
    }
  }
  required_version = ">=1.3.0"
}

resource "yandex_vpc_network" "vpc_network" {
  name = var.vpc_name_network
  description = "Create network"
}

resource "yandex_vpc_subnet" "vpc_subnet" {
  name           = var.vpc_name_subnet
  zone           = var.vpc_zone
  network_id     = yandex_vpc_network.vpc_network.id
  v4_cidr_blocks = var.vpc_subnet_cidr
  description    = "Create subnet"
}
