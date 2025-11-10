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
  
  droplet_ssh_keys = var.droplet_ssh_keys
  own_vpc          = var.own_vpc

  own_ssh = var.own_ssh
  vpc_name = var.vpc_name
  vpc_uuid = var.vpc_uuid
  vpc_ip_range = var.vpc_ip_range
  vpc_region = var.droplet_region
}