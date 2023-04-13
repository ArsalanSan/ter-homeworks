provider "vault" {
 address = "http://localhost:8200/"
 skip_tls_verify = true
 token = "education"
}

/*
resource "vault_generic_secret" "example" {
  path = "secret/example"

  data_json = <<EOT
    {
       "secret1": "password1",
       "secret2": "password2"
    } 
  EOT
}
*/

data "vault_generic_secret" "example"{
 path = "secret/example"
}

output "vault_example" {
  value = "${data.vault_generic_secret.example.data["secret1"]}"
  sensitive = true
}
