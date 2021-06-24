#!/bin/bash

docker build -t myregistry.com/webapp:4.0  --build-arg ver=4.0 .
