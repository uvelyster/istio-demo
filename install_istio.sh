#!/bin/bash

cd /root/

curl -L https://istio.io/downloadIstio | sh -

export PATH="$PATH:/root/istio-1.17.2/bin"
istioctl x precheck && istioctl install --set profile=demo -y

istioctl verify-install

# Restrict outbound traffic
istioctl install -y --set profile=demo --set meshConfig.outboundTrafficPolicy.mode=REGISTRY_ONLY
