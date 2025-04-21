ui = true
cluster_addr  = "http://127.0.0.1:8200"
api_addr      = "http://127.0.0.1:8200"
disable_mlock = true

storage "file" {
  path = "/vault/file"
  node_id = "file_node_id"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = true
}

audit "file" {
  path = "/vault/audit/audit.log"
}

