az container create --resource-group todo-api-demo-rg --name $env:TESTCONTAINERNAME --image docker.io/brihulse/rp-todo-demo-postman-runner --location centralus

az container start --resource-group todo-api-demo-rg --name $env:TESTCONTAINERNAME

az container logs --resource-group todo-api-demo-rg --name $env:TESTCONTAINERNAME