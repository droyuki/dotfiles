# export CHOKIDAR_USEPOLLING=true # for node watch

## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$HOME/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin:/opt/apache-maven-3.8.4/bin:/home/wilson_liao/.local/bin:/usr/local/go/bin:${KREW_ROOT:-$HOME/.krew}/bin:$PATH
export SKAFFOLD_UPDATE_CHECK=false
export http_proxy=http://10.160.3.88:8080
export https_proxy=$http_proxy
export no_proxy="localhost,.cht.com.tw,127.0.0.1,172.21.246.75,172.21.246.74,172.21.246.79,172.21.246.92,172.21.246.166,172.21.246.167,172.21.246.168,172.21.246.95,172.21.246.96,172.21.246.88,10.96.0.10,10.172.154.252,10.172.154.251,10.144.171.83,ktm-db.mongo.cosmos.azure.com,ktm-db.privatelink.mongo.cosmos.azure.com,cdb-ms-prod-japaneast1-fe1.japaneast.cloudapp.azure.comcdb-ms-prod-japaneast1-fe1.japaneast.cloudapp.azure.com,cdb-ms-prod-japaneast1-fe1.documents.azure.com,ktm-db-japaneast.mongo.cosmos.azure.com,ktm-db-japaneast.privatelink.mongo.cosmos.azure.com"

export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$https_proxy
export NO_PROXY=$no_proxy

# for skopeo runtime
export XDG_RUNTIME_DIR=~/run/containers


