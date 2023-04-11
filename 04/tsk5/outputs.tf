output "cluster_id" {
  value = module.mdb_mysql_cluster.cluster_id
}


output "db_id" {
  value = module.mng_database.db_id
}

output "user_db_id" {
  value = module.mng_database.user_db_id
}
