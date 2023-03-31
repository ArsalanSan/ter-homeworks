resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}

data "yandex_compute_image" "ubuntu" {
  family = var.image_name
}

resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

resource "yandex_compute_disk" "disk" {
  count = 3
  name  = "${var.disk.name}-${count.index}"
  type  = var.disk.type
  zone  = var.default_zone
  size  = var.disk.size
}

/* data "yandex_compute_disk" "d" {
  disk_id = 
} */

 
