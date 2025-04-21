# minio-kes_vault

To run this project run -  docker compose up -d
To run any standalone container from the compose run - docker compose up vault -d / kes -d

## Generate X.509 TLS certificate and private key

### OS X

````
openssl genrsa -out key.pem 2048
openssl req -new -sha256 -key key.pem -out csr.csr
openssl req -x509 -sha256 -days 365 -key key.pem -in csr.csr -out certificate.pem
openssl req -in csr.csr -text -noout | grep -i "Signature.*SHA256" && echo "All is well" || echo "This certificate will stop working in 2017! You must update OpenSSL to generate a widely-compatible certificate"
```