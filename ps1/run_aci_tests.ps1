az container create --resource-group todo-api-demo-rg --name $(testContainerName) --image docker.io/brihulse/rp-todo-demo-postman-runner --location centralus

az container start --resource-group todo-api-demo-rg --name $(testContainerName)

az container logs --resource-group todo-api-demo-rg --name $(testContainerName)