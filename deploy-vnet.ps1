$location = 'westeurope'
$rgname = "testnab-rg"
$templateuri = "https://raw.githubusercontent.com/nabbdl/vnet-nested-arm-template/master/azuredeploy.json"
New-AzResourceGroup -Name $rgname -Location $location 
#If it's first deployment use 
New-AzResourceGroupDeployment -Verbose -ResourceGroupName $rgname -DeploymentDebugLogLevel All -TemplateUri $templateuri -rebuildVNET "Yes"
#If you just want to update the deployment without deleteing existing resource run without "rebuildVNET" parameters (value set "No" by default)
New-AzResourceGroupDeployment -Verbose -ResourceGroupName $rgname -DeploymentDebugLogLevel All -TemplateUri $templateuri