output "cluster_urn" {
  value = digitalocean_kubernetes_cluster.cluster.urn
}

output "cluster_id" {
  value = digitalocean_kubernetes_cluster.cluster.id
}