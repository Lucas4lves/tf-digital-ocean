resource "digitalocean_database_db" "db" {
  cluster_id = digitalocean_database_cluster.postgres-example.id
  name       = var.db_instance_name
}

resource "digitalocean_database_cluster" "cluster" {
  name       = var.database_cluster_name
  engine     = var.database_cluster_engine
  version    = var.database_cluster_engine_version
  size       = var.database_cluster_vm_size
  region     = var.database_cluster_region
  node_count = var.database_cluster_node_count
}