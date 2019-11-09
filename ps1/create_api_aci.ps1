az container create --resource-group todo-api-demo-rg --name $env:APICONTAINERNAME --image docker.io/brihulse/rp-todo-demo --dns-name-label $env:HOSTURL --ports 80 --location centralus

az container start --resource-group todo-api-demo-rg --name $env:APICONTAINERNAME