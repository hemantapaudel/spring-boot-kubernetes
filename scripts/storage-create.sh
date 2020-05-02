#!/bin/sh

resourceGroup=hemantapStorageRG
storageAccountName=hemantapstorageaccount
shareName=hemantapshare

acrName=hemantapContainerregistry
containerGroup=mycontainergroup


 az login
 az group create --name $resourceGroup --location EastAsia

 az storage account create -g  $resourceGroup -n $storageAccountName --sku Standard_LRS

 storageConnectionString="$(az storage account show-connection-string -g  $resourceGroup -n $storageAccountName --query connectionString --output tsv)"

 echo $storageConnectionString

 az group delete --name $resourceGroup -y


