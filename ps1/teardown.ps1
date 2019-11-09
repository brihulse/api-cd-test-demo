#az container stop --resource-group todo-api-demo-rg --name $env:TESTCONTAINERNAME
az container stop --resource-group todo-api-demo-rg --name $env:APICONTAINERNAME

az container delete --resource-group todo-api-demo-rg --name $env:APICONTAINERNAME -y
#az container delete --resource-group todo-api-demo-rg --name $env:TESTCONTAINERNAME -y