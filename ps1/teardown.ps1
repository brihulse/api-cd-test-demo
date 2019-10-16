az container stop --resource-group todo-api-demo-rg --name demo-container-tester
az container stop --resource-group todo-api-demo-rg --name demo-container

az container delete --resource-group todo-api-demo-rg --name demo-container -y
az container delete --resource-group todo-api-demo-rg --name demo-container-tester -y