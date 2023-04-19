terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = ">=0.89.0"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "bucket-dev-task"
    region     = "ru-central1"
    key        = "terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true

    dynamodb_endpoint = "https://docapi.serverless.yandexcloud.net/ru-central1/b1gqp5blt5vgc3tneeo8/etncoenh3qcoj19h3jpe"
    dynamodb_table    = "table-fstate"
  }

  required_version = ">=1.3.0"
}

provider "yandex" {
  #token     = var.token
  service_account_key_file = var.sa_key_file
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
#  zone      = var.default_zone
}
