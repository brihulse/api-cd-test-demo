az container stop --resource-group todo-api-demo-rg --name $(testContainerName)
az container stop --resource-group todo-api-demo-rg --name $(apiContainerName)

az container delete --resource-group todo-api-demo-rg --name $(apiContainerName) -y
az container delete --resource-group todo-api-demo-rg --name $(testContainerName) -y