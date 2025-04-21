ui = true
cluster_addr  = "http://127.0.0.1:8201"
api_addr      = "http://127.0.0.1:8200"
disable_mlock = true
default_lease_ttl = "168h"
max_lease_ttl = "720h"

storage "file" {
  path = "/etc/vault/file"
  node_id = "file_node_id"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_cert_file = "/etc/vault/tls/certificate.pem"
  tls_key_file  = "/etc/vault/tls/key.pem"
}
