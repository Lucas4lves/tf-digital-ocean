resource "digitalocean_project" "k8s-devops-ia" {
  name = var.digital_ocean_project_name
  environment = var.digital_ocean_project_environment
  resources   = [ module.digital_ocean_k8s_cluster.cluster_urn ]
}

module "digital_ocean_k8s_cluster" {
  source                                    = "../kubernetes"
  kubernetes_cluster_name                   = var.kubernetes_cluster_name
  kubernetes_cluster_version                = var.kubernetes_cluster_version
  kubernetes_cluster_region                 = var.digital_ocean_region
  kubernetes_cluster_worker_pool_vmsize     = var.kubernetes_cluster_worker_pool_vmsize
  kubernetes_cluster_worker_pool_name       = var.kubernetes_cluster_worker_pool_name
  kubernetes_cluster_worker_pool_node_count = var.kubernetes_cluster_worker_pool_node_count
}