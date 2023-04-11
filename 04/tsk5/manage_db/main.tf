resource "yandex_mdb_mysql_database" "db1" {
  cluster_id = var.cluster_id
  name       = var.name_db
}

resource "yandex_mdb_mysql_user" "user_db" {
  cluster_id = var.cluster_id
  name       = var.user_name
  password   = "Qwerty@123"
  permission {
    database_name = yandex_mdb_mysql_database.db1.name
    roles         = [ "SELECT", "INSERT", "UPDATE", "DELETE" ]
  }
  depends_on = [ yandex_mdb_mysql_database.db1 ]
}

