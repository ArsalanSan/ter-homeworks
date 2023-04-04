output userdata {
  value = "\n${data.template_file.cloudinit.rendered}"
}


output "nginx_public_ip" {
  description = "Public IP"
  value = module.test-vm.*.external_ip_address
}

