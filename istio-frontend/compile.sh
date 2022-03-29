#!/bin/bash

docker run --rm -v "$PWD":/work -w /work  maven mvn clean install
docker build -t myregistry.com/frontend:1.0 .
