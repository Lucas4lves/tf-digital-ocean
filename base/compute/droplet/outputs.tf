output "droplet_id" {
  value = digitalocean_droplet.this.id
}

output "vpc_id" {
  value = module.droplet_vpc[0].vpc_uuid
}