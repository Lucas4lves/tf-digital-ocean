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

variable "cloud_firewall_name" {
  type = string
  default = "sample-cf"
}

variable "inbound_rules_config" {
  type = list(object({
    protocol = string,
    port_range = string,
    source_addresses = list(string)
  }))

  default = [ {
    "protocol" = "tcp",
    "port_range" = "80",
    "source_addresses" : ["201.20.124.5/24"]
  }, 
  {
    "protocol" = "tcp",
    "port_range" = "443",
    "source_addresses" : ["201.20.124.5/24"]
  },
  {
    "protocol" = "tcp",
    "port_range" = "22",
    "source_addresses" : ["201.20.124.5/24"]
  }]
}

variable "outbound_rules_config" {
  type = list(object({
    protocol = string,
    port_range = string,
    destination_addresses = list(string)
  }))

  default = [ {
    "protocol" = "tcp",
    "port_range" = "80",
    "destination_addresses" : ["0.0.0.0/0"]
  } ]
}

variable "droplet_ids" {
  type = list(number)
  default = []
}