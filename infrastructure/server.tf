resource "hcloud_server" "server" {
  name = "lecture-server"
  location = "hel1" # Helsinki, Finland
  server_type = "ca22" # 2 vCPU, 4GB RAM, 40GB SSD
  image = "debian-12"

  ssh_keys = [
    hcloud_ssh_key.server_key.id 
  ]
}
