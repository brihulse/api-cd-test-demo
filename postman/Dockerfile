FROM node:alpine

RUN npm install -g newman newman-reporter-html

WORKDIR /etc/newman
COPY src/ .

ENTRYPOINT ["newman"]