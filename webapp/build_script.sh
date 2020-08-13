#!/bin/bash

docker build -t myregistry.com:5000/web-app:7.0  --build-arg ver=7.0 .