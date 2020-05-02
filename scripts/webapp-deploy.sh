#!/bin/sh

resourceGroup=hemantapwebappResourceGroup
location=EastAsia
webPlanName=hemantapWebPlanservice
webAppName=hemantapwebapp

 az login
 az group create --name $resourceGroup --location $location
 az appservice plan create -n $webPlanName -g $resourceGroup -l $location --is-linux --sku S1
 az webapp create -n $webAppName  -g  $resourceGroup --plan $webPlanName -i hemantapcontainerregistry.azurecr.io/spring-boot-kubernetes:v1

