terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = ">=0.89.0"
    }
  }
  required_version = ">=1.3.0"
}

provider "yandex" {
  #token     = var.token
  service_account_key_file = var.sa_key_file
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
}
