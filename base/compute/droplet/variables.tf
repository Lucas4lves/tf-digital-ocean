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

variable "own_ssh" {
  type = bool
  default = true
}

variable "local_pub_key_path" {
  type = string
  default = ""
}