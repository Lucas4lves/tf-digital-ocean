resource "digitalocean_ssh_key" "this" {
  count = var.own_ssh == true ? 1 : 0
  name       = "${var.droplet_name}-ssh-key"
  public_key = file(var.local_pub_key_path)
}

resource "digitalocean_droplet" "this" {
  image   = var.droplet_image
  name    = var.droplet_name
  region  = var.droplet_region
  size    = var.droplet_size

  ssh_keys = var.own_ssh == true ? ["${digitalocean_ssh_key.this[0].id}"] : var.droplet_ssh_keys  
  vpc_uuid = var.vpc_uuid

  depends_on = [ digitalocean_ssh_key.this ]
}