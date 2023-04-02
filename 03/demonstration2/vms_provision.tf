resource "yandex_compute_instance" "nginx-vms" {

  name        = "nginx-vm-${count.index}"
  platform_id = var.vm_platforms.v1

  count = 2

  resources {
    cores         = var.vm_resources.cores
    memory        = var.vm_resources.memory
    core_fraction = var.vm_resources.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      type = "network-hdd"
      size = 5
    }
  }

  scheduling_policy { preemptible = true }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = local.vms_ssh_root_key 
  }
  allow_stopping_for_update = true
}
