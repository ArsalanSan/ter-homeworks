output "db_id" {
  value = yandex_mdb_mysql_database.db1.id
  description = ""
}

output "user_db_id" {
  value = yandex_mdb_mysql_user.user_db.id
  description = ""
}

