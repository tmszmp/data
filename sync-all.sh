#!/usr/bin/env sh
cd /home/tim_schatz/wetter
git pull
docker build . -t gcr.io/proud-effect-284706/wetter
docker push gcr.io/proud-effect-284706/wetter
cd /home/tim_schatz/cities
git pull
#docker build . -t gcr.io/proud-effect-284706/cities
#docker push gcr.io/proud-effect-284706/cities
kubectl apply -f /home/tim_schatz/test.yaml
kubectl rollout restart deployment.apps/wetter-app
kubectl rollout restart deployment.apps/cities-app
kubectl get services
