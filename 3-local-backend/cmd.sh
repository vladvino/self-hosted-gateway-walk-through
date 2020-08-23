kubectl create namespace backend-service

kubectl apply -f yaml/httpbin.yaml --namespace=backend-service
