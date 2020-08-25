# run commands from the root of the project folder

# clean up
kubectl delete -f yaml/gateway.yaml --namespace=api-gateway
kubectl delete -f 2-external-cache/yaml/redis.yaml --namespace=api-gateway
kubectl delete -f 3-local-backend/yaml/httpbin.yaml --namespace=backend-service
kubectl delete -f 5-local-telemetry/yaml/telemetry.yaml --namespace=telemetry
kubectl delete -f 7-dapr-integration/yaml/httpbin-dapr.yaml --namespace=api-gateway
kubectl delete secret --namespace api-gateway gateway-token
kubectl delete namespace telemetry
kubectl delete namespace backend-service
kubectl delete namespace api-gateway

# test with busybox
kubectl apply -f yaml/busybox.yaml --namespace=api-gateway
kubectl exec -i -t --namespace api-gateway busybox -- sh
wget httpbin.backend-service/get -q -S -O
kubectl delete -f yaml/busybox.yaml --namespace=api-gateway

# test with sleepy
kubectl apply -f yaml/sleepy.yaml --namespace=api-gateway
kubectl exec -i -t --namespace api-gateway sleepy-pod -- sh
curl httpbin.backend-service/get
krm -f yaml/sleepy.yaml --namespace=api-gateway