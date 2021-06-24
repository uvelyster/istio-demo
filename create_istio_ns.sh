#!/bin/bash

kubectl create ns $1
kubectl config set-context --current --namespace $1
kubectl label namespace $1 istio-injection=enabled
