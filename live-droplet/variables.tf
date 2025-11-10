variable "droplet_image" {
  type    = string
  default = "ubuntu-20-04-x64"
}

variable "droplet_name" {
  type    = string
  default = ""
}

variable "droplet_region" {
  type    = string
  default = "nyc1"
}

variable "droplet_size" {
  type    = string
  default = ""
}

variable "vpc_uuid" {
  type    = string
  default = ""
}

variable "project_name" {
  type = string
  default = ""
}

variable "project_environment" {
  type = string
  default = ""
}

variable "droplet_ssh_keys" {
  type    = list(string)
  default = [""]
}

variable "digital_ocean_do_token" {
  type = string
  default = ""
}

variable "own_vpc" {
  type = bool
  default = false
}

variable "own_ssh" {
  type = bool
  default = false
}

variable "vpc_name" {
  type = string
  default = ""
}

variable "vpc_region" {
  type = string
  default = ""
}

variable "vpc_description" {
  type = string
  default = ""
}

variable "vpc_ip_range" {
 type = string
 default = "10.10.10.0/24"
}

variable "local_pub_key_path" {
  type = string
  default = ""
}