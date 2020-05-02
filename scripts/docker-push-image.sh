#!/bin/sh
 cd ../
 mvn clean install
 docker build -f Dockerfile -t spring-boot-kubernetes:v1 .

 resourceGroup=hemantapResourceGroup

 acrName=hemantapContainerregistry

 az login
 az group create --name $resourceGroup --location EastAsia
 az acr create --resource-group $resourceGroup --name $acrName --sku Basic --admin-enabled true
 az acr login --name $acrName

 registryServer="$( az acr show --name $acrName --query loginServer --output tsv)"
 acrPassword="$(az acr credential show --name $acrName --query "passwords[0].value" -o tsv)"

 docker tag spring-boot-kubernetes:v1 $registryServer/spring-boot-kubernetes:v1

 docker push $registryServer/spring-boot-kubernetes:v1

 az acr repository list --name hemantapContainerregistry --output table
 az acr repository show-tags --name hemantapContainerregistry --repository spring-boot-kubernetes --output table


 cd scripts
