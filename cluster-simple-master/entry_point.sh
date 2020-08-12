#!/bin/bash

echo "Baixando e instalando o K3S";

curl -sfl https://get.k3s.io | sh - ;

echo "K3S Instado";

kubectl get nodes;

kubectl get pods --all-namespaces

token=$(cat /var/lib/rancher/k3s/server/node-token)

echo "K3S join into cluster with the token:"
echo $token



# apt-get update -y
# apt-get upgrade -y
