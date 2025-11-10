variable "digital_ocean_project_name" {
  type    = string
  default = ""
}
variable "digital_ocean_do_token" {
  type    = string
  default = ""
}

variable "digital_ocean_project_environment" {
  type    = string
  default = ""
}

variable "kubernetes_cluster_name" {
  type    = string
  default = ""
}

variable "digital_ocean_region" {
  type    = string
  default = "nyc1"
}

variable "kubernetes_cluster_version" {
  type    = string
  default = "latest"
}

variable "kubernetes_cluster_worker_pool_name" {
  type    = string
  default = "worker_pool"
}

variable "kubernetes_cluster_worker_pool_vmsize" {
  type    = string
  default = ""
}

variable "kubernetes_cluster_worker_pool_node_count" {
  type    = number
  default = 1
}

variable "vpc_name" {
  type    = string
  default = ""
}

variable "vpc_ip_range" {
  type    = string
  default = "10.10.10.0/24"
}

variable "vpc_region" {
  type    = string
  default = ""
}

variable "vpc_description" {
  type    = string
  default = ""
}

variable "database_instance_name" {
  type    = string
  default = ""
}

variable "database_cluster_name" {
  type    = string
  default = ""
}

variable "database_cluster_engine" {
  type    = string
  default = ""
}

variable "database_cluster_engine_version" {
  type    = string
  default = ""
}

variable "database_cluster_vm_size" {
  type    = string
  default = ""
}

variable "database_cluster_region" {
  type    = string
  default = "nyc1"
}

variable "database_cluster_node_count" {
  type    = number
  default = 1
}

variable "droplet_image" {
  type = string
  default = "ubuntu-20-04-x64"
}

variable "droplet_name" {
  type = string
  default = ""
}

variable "droplet_region" {
  type = string
  default = "nyc1"
}

variable "droplet_size" {
  type = string
  default = ""
}

variable "vpc_uuid" {
  type = string
  default = ""
}

variable "droplet_ssh_keys" {
  type = list(string)
  default = [ "" ]
}