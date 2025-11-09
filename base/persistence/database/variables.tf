variable "database_instance_name" {
  type = string
  default = ""
}

variable "database_cluster_name" {
  type = string
  default = ""
}

variable "database_cluster_engine" {
  type = string
  default = ""
}

variable "database_cluster_engine_version" {
  type = string
  default = ""
}

variable "database_cluster_vm_size" {
  type = string
  default = ""
}

variable "database_cluster_region" {
  type = string
  default = "nyc1"
}

variable "database_cluster_node_count" {
  type = number
  default = 1
}

variable "vpc_uuid" {
  type = string
  default = ""
}

variable "database_cluster_project_id" {
  type = string
  default = ""
}