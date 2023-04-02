output "nginx_public_ip" {
  description = "Public IP"
  value = [for value in yandex_compute_instance.nginx-vms:"Public IP ${value.name} = ${value.network_interface[0].nat_ip_address}"]
} 
