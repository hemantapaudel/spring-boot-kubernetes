#!/bin/sh

resourceGroup=hemantapResourceGroup
acrName=hemantapContainerregistry
containerGroup=mycontainergroup


registryServer="$( az acr show --name $acrName --query loginServer --output tsv)"
acrPassword="$(az acr credential show --name $acrName --query "passwords[0].value" -o tsv)"

echo "====resourceGroup $resourceGroup , acrName $acrName  containerGroup $containerGroup registryServer $registryServer"

az container create --resource-group $resourceGroup --name $containerGroup --image $registryServer/spring-boot-kubernetes:v1 --ip-address public --dns-name-label hemantapcontainerdns --port 80 --cpu 1 --memory 1.5 -e env=dev --restart-policy never --registry-login-server $registryServer --registry-username $acrName --registry-password $acrPassword

echo "===az container logs --name $containerGroup --resource-group $resourceGroup"

az container logs --name $containerGroup --resource-group $resourceGroup