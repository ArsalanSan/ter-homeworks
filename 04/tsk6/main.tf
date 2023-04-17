provider "vault" {
 address = var.vault_addr
 skip_tls_verify = var.vault_skip_tls_verify
 token = var.vault_admin_token
}

resource "vault_generic_secret" "example" {
  path = "secret/example"

  data_json = <<EOT
    {
       "secret1": "password1",
       "secret2": "password2"
    } 
  EOT
}

data "vault_generic_secret" "example"{
 path = "secret/example"
 depends_on = [ vault_generic_secret.example ]
}

output "vault_example" {
  value = "${data.vault_generic_secret.example.data["secret1"]}"
  sensitive = true
  description = "output secret"
}
