resource "digitalocean_kubernetes_cluster" "this" {
  name   = var.kubernetes_cluster_name
  region = var.kubernetes_cluster_region
  version = var.kubernetes_cluster_version

  node_pool {
    name       = var.kubernetes_cluster_worker_pool_name
    size       = var.kubernetes_cluster_worker_pool_vmsize
    node_count = var.kubernetes_cluster_worker_pool_node_count
  }
}