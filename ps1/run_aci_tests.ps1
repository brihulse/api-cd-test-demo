az container stop --resource-group todo-api-demo-rg --name demo-container-tester

az container create --resource-group todo-api-demo-rg --name demo-container-tester --image docker.io/brihulse/rp-todo-demo-postman-runner --location centralus

az container start --resource-group todo-api-demo-rg --name demo-container-tester

az container logs --resource-group todo-api-demo-rg --name demo-container-tester
