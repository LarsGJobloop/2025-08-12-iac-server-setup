resource "hcloud_server" "server" {
  name        = "lecture-server"
  location    = "hel1" # Helsinki, Finland
  server_type = "cx22" # 2 vCPU, 4GB RAM, 40GB SSD
  image       = "debian-12"

  user_data = file("${path.module}/cloud-config.yaml")

  ssh_keys = [
    hcloud_ssh_key.server_key.id
  ]
}

output "server_detail" {
  description = "All the server details"
  value       = hcloud_server.server
}
