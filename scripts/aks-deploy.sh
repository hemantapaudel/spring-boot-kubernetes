#!/bin/sh

resourceGroup=hemantapaksRG
clusterName=hemantak8scluster

acrName=hemantapContainerregistry
containerGroup=mycontainergroup

 az login

 #az aks install-cli
 az aks get-credentials --resource-group $resourceGroup --name $clusterName
 echo "====Display virtual node used for cluster====kubectl get nodes"
 kubectl get nodes






