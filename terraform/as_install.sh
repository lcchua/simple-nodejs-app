#!/bin/bash

# Once the EC2 instance is running and ready, can 
# "curl http://<ec2 public ip address>:80"
# to see the display message below

yum update -y

# Install Docker
yum install -y docker
systemctl start docker
systemctl enable docker

# Install Git
yum install -y git

# Install Node.js 
yum install -y nodejs

# Verify installations
docker --version
git --version
node --version

# npm init
# npm install express

# i) SSH into the EC2 web app server
# ii) Copy/create index.js to the Nodejs working directory
#     then run the following commands:
#echo ""use strict"; \
#const express = require("express"); \
#const PORT = 8000; \
#const HOST = "0.0.0.0"; \
#const OS = require("os"); \
#const ENV = "DEV"; \
#const app = express();
#app.get("/", (req, res) => { \
#  res.statusCode = 200; \
#  const msg = "Hello from Node!"; \
#  res.send(msg); \
#}); \
#app.get("/test", (req, res) => { \
#  res.statusCode = 200; \
#  const msg = "Hello from /test Node!"; \
#  res.send(msg); \
#}); \
#app.listen(PORT, HOST); \
#console.log(`Running on http://${HOST}:${PORT}`);" > index.js
#node index.js

reboot
