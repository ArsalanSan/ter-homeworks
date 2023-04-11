resource "yandex_vpc_network" "vpc" {
  name = "develop"
}

module "mdb_mysql_cluster" {
  depends_on = [ yandex_vpc_network.vpc ]
  
  source     = "./mdb_mysql"
  HA         = true
  name       = "example"
  network_id = yandex_vpc_network.vpc.id
}

module "mng_database" {
  #depends_on = [ module.mdb_mysql_cluster ]

  source     = "./manage_db"
  cluster_id = module.mdb_mysql_cluster.cluster_id
  name_db    = "test"
  user_name  = "app"
}
