az container create --resource-group todo-api-demo-rg --name $(apiContainerName) --image docker.io/brihulse/rp-todo-demo --dns-name-label $(hostUrl) --ports 80 --location centralus

az container start --resource-group todo-api-demo-rg --name $(apiContainerName)