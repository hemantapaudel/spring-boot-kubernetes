#!/bin/sh
#az group delete --name hemantapResourceGroup -y

resourceGroup=hemantapResourceGroup
acrName=hemantapContainerregistry
containerGroup=mycontainergroup

echo "== az container list --resource-group $resourceGroup "
az container list --resource-group $resourceGroup

echo "===az container delete --resource-group $resourceGroup --name $containerGroup -y"

az container delete --resource-group $resourceGroup --name $containerGroup -y


