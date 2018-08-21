# This is the server installation script to support the MedGATE Center project

## Docker and Git proxy settings 

If docker is not installed run `installdocker.sh` to install docker.

1. If docker is living behind a **proxy** server, please apply the following changes in https://docs.docker.com/config/daemon/systemd/#httphttps-proxy 

2. For git, you may consider something like:
```
git config --global http.proxy http://proxyUsername:proxyPassword@proxy.server.com:port
git config --global https.proxy http://proxyUsername:proxyPassword@proxy.server.com:port
```

## Get Started

Set credentials for PostgreSQL and ElasticSearch in `medcentre.config` as well as the proxy.

run in console `run.sh`

stop server `stop.sh`

remove all service `remove.sh`

### MedGate Center Dashboard

http://yourIP:3002

### Kibana for MedGate Center (Standalone)

http://yourIP:5602

### Elasticsearch for MedGate Center (Standalone)

http://yourIP:9201

### Vault for MedGate Center (Standalone)

http://yourIP:8200

## Note

