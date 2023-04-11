resource "yandex_vpc_subnet" "develop" {
  for_each = ( var.HA ? var.three_hosts : var.one_host )
  name           = "${each.key}-${each.value}" #"${each.value.zone}-${each.value.cidr}"
  zone           = each.key
  network_id     = var.network_id
  v4_cidr_blocks = [ each.value ]
}

resource "yandex_mdb_mysql_cluster" "mysql_cluster" {
  name        = var.name
  environment = "PRODUCTION"
  network_id  = var.network_id
  version     = "8.0"

  resources {
    resource_preset_id = "b1.medium"
    disk_type_id       = "network-hdd"
    disk_size          = 10
  }

  dynamic "host" {
    for_each = zipmap( values(yandex_vpc_subnet.develop)[*].zone, values(yandex_vpc_subnet.develop)[*].id )
    content {
      zone      = host.key
      subnet_id = host.value
    }
  }
  
  depends_on = [ yandex_vpc_subnet.develop ]
}