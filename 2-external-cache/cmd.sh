artillery run -k yaml/artillery.cache.yaml

kubectl apply -f yaml/redis.yaml --namespace=api-gateway

kubectl create namespace backend-service

kubectl apply -f yaml/httpbin.yaml --namespace=backend-service
