#!/usr/bin/env sh
docker build . -t gcr.io/proud-effect-284706/wetter
docker push gcr.io/proud-effect-284706/wetter
kubectl apply -f data.yaml
kubectl rollout restart deployment.apps/wetter-app
kubectl rollout restart deployment.apps/cities-app
kubectl get services
