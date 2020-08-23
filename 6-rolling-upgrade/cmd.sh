 minikube service gateway --url -n api-gateway

# update artillery.restart.yaml

artillery run -k yaml/artillery.restart.yaml

kubectl rollout restart deployment/gateway --namespace=api-gateway