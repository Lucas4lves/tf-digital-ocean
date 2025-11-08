variable "kubernetes_cluster_name" {
  type = string
  default = ""
}

variable "kubernetes_cluster_region" {
  type = string
  default = "ny1"
}

variable "kubernetes_cluster_version" {
  type = string
  default = "latest"
}

variable "kubernetes_cluster_worker_pool_name" {
  type = string
  default = "worker_pool"
}

variable "kubernetes_cluster_worker_pool_vmsize" {
  type = string
  default = ""
}

variable "kubernetes_cluster_worker_pool_node_count" {
  type = number
  default = 1
}

variable "digital_ocean_do_token" {
  type = string
  default = ""
}