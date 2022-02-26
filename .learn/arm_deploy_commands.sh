deployName="addoutputs" #Add your unique deployment name
templateFile="azuredeploy.json"
today=$(date +"%d-%b-%Y")
DeploymentName=$deployName"-"$today
az deployment group create \
  --name $DeploymentName \
  --template-file $templateFile \
  --parameters storageSKU=Standard_GRS storageName=alle0915storageaccount02