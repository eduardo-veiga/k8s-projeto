#!/bin/bash

echo "criando imgs"

docker build -t eveigadev/projeto-backend:1.0 backend/.
docker build -t eveigadev/projeto-database:1.0 database/.

docker image push eveigadev/projeto-backend
docker image push eveigadev/projeto-database
echo "criando servicos"

kubectl apply -f ./services.yml

echo "criando os deployments"


kubectl apply -f ./deployment.yml


