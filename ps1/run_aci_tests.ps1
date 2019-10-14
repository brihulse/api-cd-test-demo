az --version

az container create --resource-group todo-api-demo-rg --name demo-container-tester --image docker.io/brihulse/rp-todo-demo-postman-runner --restart-policy Never --location centralus

az container attach --resource-group todo-api-demo-rg --name demo-container-tester
