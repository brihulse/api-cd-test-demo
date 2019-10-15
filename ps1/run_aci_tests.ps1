az container create --resource-group todo-api-demo-rg --name demo-container-tester --image docker.io/brihulse/rp-todo-demo-postman-runner --restart-policy Never --location centralus

az container exec -g MyResourceGroup --name demo-container-tester --container-name demo-container-tester --exec-command "run TodoDemoIntegrationTests.postman_collection.json -e TodoTest-Integration.postman_environment.json -r cli"
