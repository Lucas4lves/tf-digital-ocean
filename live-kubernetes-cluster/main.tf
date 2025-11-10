resource "digitalocean_project" "k8s-devops-ia" {
  name        = var.digital_ocean_project_name
  environment = var.digital_ocean_project_environment
}

resource "digitalocean_project_resources" "k8s_cluster" {
  project = digitalocean_project.k8s-devops-ia.id
  resources = ["do:kubernetes:${module.digital_ocean_k8s_cluster.cluster_id}"]
}

resource "digitalocean_project_resources" "database" {
  project = digitalocean_project.k8s-devops-ia.id
  resources = [module.digital_ocean_database_cluster.database_cluster_urn]
  
  depends_on = [ digitalocean_project.k8s-devops-ia ]
}

module "digital_ocean_vpc" {
  source          = "../base/networking/vpc"
  vpc_name        = var.vpc_name
  vpc_description = var.vpc_description
  vpc_ip_range    = var.vpc_ip_range
  vpc_region      = var.digital_ocean_region

  digital_ocean_do_token = var.digital_ocean_do_token
}

module "bastion_server" {
  source           = "../compute/droplet"
  droplet_image    = var.droplet_image
  droplet_name     = var.droplet_name
  droplet_region   = var.digital_ocean_region
  droplet_size     = var.droplet_size
  droplet_ssh_keys = var.droplet_ssh_keys

  vpc_uuid = var.vpc_uuid
}

module "digital_ocean_database_cluster" {
  source                          = "../base/persistence/database"
  database_instance_name          = var.database_instance_name
  database_cluster_name           = var.database_cluster_name
  database_cluster_engine         = var.database_cluster_engine
  database_cluster_engine_version = var.database_cluster_engine_version
  database_cluster_region         = var.digital_ocean_region
  database_cluster_node_count     = var.database_cluster_node_count
  database_cluster_vm_size        = var.database_cluster_vm_size
  
  database_cluster_project_id = digitalocean_project.k8s-devops-ia.id
  vpc_uuid = module.digital_ocean_vpc.vpc_uuid
}

module "digital_ocean_k8s_cluster" {
  source                                    = "../kubernetes"
  kubernetes_cluster_name                   = var.kubernetes_cluster_name
  kubernetes_cluster_version                = var.kubernetes_cluster_version
  kubernetes_cluster_region                 = var.digital_ocean_region
  kubernetes_cluster_worker_pool_vmsize     = var.kubernetes_cluster_worker_pool_vmsize
  kubernetes_cluster_worker_pool_name       = var.kubernetes_cluster_worker_pool_name
  kubernetes_cluster_worker_pool_node_count = var.kubernetes_cluster_worker_pool_node_count

  kubernetes_cluster_vpc_uuid = module.digital_ocean_vpc.vpc_uuid
}