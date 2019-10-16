# Demo: Automated Testing in your CD Pipeline using Postman

In this demo I'll show you how to automatically run tests built in Postman anytime you deploy changes to a RESTful api. 

## Technologies Used
- [Postman](https://www.getpostman.com)
- [Newman](https://learning.getpostman.com/docs/postman/collection_runs/command_line_integration_with_newman/) - the node.js based postman cli
- dotnet core 3 http api (based on: [Azure-Samples dotnet core api project](https://github.com/Azure-Samples/dotnet-core-api))
- [Docker](https://www.docker.com)
- [Dockerhub](https://hub.docker.com)
- [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/)
- [Azure Container Instances](https://azure.microsoft.com/en-us/services/container-instances/)
- [Azure Cli](https://docs.microsoft.com/en-us/cli/azure/?view=azure-cli-latest)

These technologies are not a requirement for doing integration testing in a CI/CD pipeline, you're free to use any number of equivalent technologies. Popular equivalents like Jenkins for CI/CD, AWS to host applications or even on-prem servers, bitbucket for source control are capable of accomplishing the same concept. 

## Preparing your environment

To set up your environment to be able to execute the steps as part of this demo you need to do the following.

- Create a new Azure tenant and subscription to host the applications (take advantage of [Azure's free trial](https://azure.microsoft.com/en-us/free/) like I did!)
- Create a resource group in your Azure subscription named todo-api-demo-rg
- Create two dockerhub registries to host your containers. Find mine [here](https://cloud.docker.com/u/brihulse/repository/docker/brihulse/rp-todo-demo-postman-runner) & [here](https://cloud.docker.com/u/brihulse/repository/docker/brihulse/rp-todo-demo). 
- Create a visualstudio.com account and project to host your pipeline
- Create service connections in your visualstudio.com project to your github, docker registry, and azure subscription
- Update references in azure-pipelines.yml to your github, docker repos and azure subscription
- Create a new pipeline in your visualstudio.com account using the supplied azure-pipelines.yml


## The Process
The process we're implementing is kicked off by updating the master branch in your github repo which automatically triggers your pipeline to run. The pipeline will do the following:

1. Build your dotnet core api container image and push it to your dockerhub repo
2. Build your newman container image and pushes it to your dockerhub repo
3. Use the latest container image from your dockerhub api repo to deploy your dotnet core api using Azure Container Instances
4. Use the latest container image from your dockerhub api tester repo to deploy your newman testing application using Azure Container Instances. When this container starts it will execute tests against the instance of the api that was just deployed.
5. Get the results from the test run

![alt text](https://raw.githubusercontent.com/brihulse/api-cd-test-demo/master/images/bndprocess.PNG "The Process")

## Improvements

How can you take this to the next level?
- Package your postman test source and environment variable set with your container image (good for private collections and using different variables for testing in different environments)
- Generate pretty html reports and post them somewhere your stakeholders can access. see: https://www.npmjs.com/package/newman-reporter-htmlextra
- Create a multi-staged pipeline for staging/production deployments and gate them based on test results