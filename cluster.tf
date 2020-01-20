resource "digitalocean_kubernetes_cluster" "gocd" {
  name    = "gocd"
  region  = "lon1"
  version = "1.16.2-do.2"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }

}
