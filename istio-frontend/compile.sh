#!/bin/bash

docker run --rm -v "$PWD":/work -w /work  maven mvn clean install
