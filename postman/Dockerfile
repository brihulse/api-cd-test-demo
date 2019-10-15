FROM node:alpine

RUN npm install -g newman newman-reporter-html

WORKDIR /etc/newman
COPY src/ .

ENTRYPOINT ["newman", "run TodoDemoIntegrationTests.postman_collection.json -e TodoTest-Integration.postman_environment.json -r cli"]