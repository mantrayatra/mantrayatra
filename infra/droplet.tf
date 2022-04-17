resource "digitalocean_droplet" "www-1" {
  image  = "ubuntu-20-04-x64"
  name   = "web-1"
  region = "blr1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    digitalocean_ssh_key.default.fingerprint
  ]
  connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
  }
}