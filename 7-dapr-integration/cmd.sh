kubectl apply -f yaml/httpbin.yaml --namespace=api-gateway

kubectl apply -f ../yaml/gateway.yaml --namespace=api-gateway

kubectl port-forward --namespace=api-gateway service/gateway 8080:80 8081:443