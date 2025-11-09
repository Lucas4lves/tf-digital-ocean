output "vpc_uuid" {
  value = digitalocean_vpc.this.id
  description = "VPC unique identifier"
}