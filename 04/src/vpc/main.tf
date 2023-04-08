resource "yandex_vpc_network" "vpc" {
  description = "Create network"
  name = var.name
}

resource "yandex_vpc_subnet" "vpc_subnets" {
  description = "Create zone && subnet"
  for_each = { for k,v in var.subnets: k => v }

  network_id     = yandex_vpc_network.vpc.id
  name           = "${var.name}-${each.value.cidr}"
  v4_cidr_blocks = [each.value.cidr]
  zone           = each.value.zone
}
