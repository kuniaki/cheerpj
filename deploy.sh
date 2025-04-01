#!/bin/bash

docker build -t "playground:hello-docker" .
docker run -t -p 8080:8080 "playground:hello-docker"
