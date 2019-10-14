az --version

az container create --resource-group todo-api-demo-rg --name demo-container --image docker.io/brihulse/rp-todo-demo --dns-name-label rp-todo-demo --ports 80 --location centralus