# Data resources
data "digitalocean_vpc" "bastion_vpc" {
  name = var.vpc_name
}

resource "digitalocean_project" "this" {
  name = var.project_name
  environment = var.project_environment
}

resource "digitalocean_project_resources" "droplet" {
  project = digitalocean_project.this.id
  resources = ["do:droplet:${module.bastion_server.droplet_id}"]

  depends_on = [ module.bastion_server ]
}

module "bastion_server" {
  source           = "../base/compute/droplet"
  droplet_image    = var.droplet_image
  droplet_name     = var.droplet_name
  droplet_region   = var.droplet_region
  droplet_size     = var.droplet_size
  local_pub_key_path = var.local_pub_key_path
  own_ssh = var.own_ssh
  droplet_ssh_keys = var.droplet_ssh_keys
  vpc_uuid = data.digitalocean_vpc.bastion_vpc.id
}