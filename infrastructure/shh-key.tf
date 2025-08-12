variable "ssh_key" {
  description = "The SSH Public Key for the server"
  type = string
}

resource "hcloud_ssh_key" "server_key" {
  name = "server-key"
  public_key = var.ssh_key
}