output "vpc_uuid" {
  value = digitalocean_vpc.this.urn
  description = "VPC unique identifier"
}