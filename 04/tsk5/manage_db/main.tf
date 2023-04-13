resource "yandex_mdb_mysql_database" "db" {
  cluster_id = var.cluster_id
  name       = var.name_db
  description = "Create DB"
}

resource "yandex_mdb_mysql_user" "user_db" {
  cluster_id = var.cluster_id
  name       = var.user_name
  password   = "Qwerty@123"
  permission {
    database_name = yandex_mdb_mysql_database.db.name
    roles         = [ "SELECT", "INSERT", "UPDATE", "DELETE" ]
  }
  depends_on = [ yandex_mdb_mysql_database.db ]
  description = "Add user for DB"
}

