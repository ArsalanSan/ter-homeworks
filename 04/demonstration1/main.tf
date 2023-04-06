/*
#создаем облачную сеть
resource "yandex_vpc_network" "develop" {
  name = "develop"
}

#создаем подсеть
resource "yandex_vpc_subnet" "develop" {
  name           = "develop-ru-central1-a"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = ["10.0.1.0/24"]
}

data "yandex_vpc_subnet" "get_subnet_id" {
  depends_on = [ module.vpc ]
  name = var.vpc_name
}

data "yandex_vpc_network" "get_network_id" {
 depends_on = [ module.vpc ]
 name = var.vpc_name
}
*/

module "vpc" {
  source           = "./vpc"
  vpc_name_network = var.vpc_name
  vpc_name_subnet  = var.vpc_name
  vpc_zone         = var.default_zone
  vpc_subnet_cidr  = var.default_cidr
}

module "test-vm" {
  source          = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name        = "develop"
  network_id      = module.vpc.vpc_network_id
  subnet_zones    = [ var.default_zone ]
  subnet_ids      = [ module.vpc.vpc_subnet_id ]
  instance_name   = "web"
  instance_count  = 2
  image_family    = "ubuntu-2004-lts"
  public_ip       = true
  
  metadata = {
      user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
      serial-port-enable = 1
  }
  
  depends_on = [ module.vpc ]
}

#Пример передачи cloud-config в ВМ для демонстрации №3
data "template_file" "cloudinit" {
 template = file("./cloud-init.yml")

# depends_on = [ module.test-vm ]

 vars = {
    username           = var.username
    ssh_public_key     = file(var.ssh_public_key)
    packages           = var.packages
  }
}

