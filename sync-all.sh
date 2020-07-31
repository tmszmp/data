#!/usr/bin/env sh
kubectl apply -f data/data.yaml
kubectl rollout restart deployment.apps/wetter-app
kubectl rollout restart deployment.apps/cities-app
kubectl get services
