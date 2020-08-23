kubectl create namespace api-gateway

(copy create secret over me) --namespace=api-gateway

kubectl apply -f ../yaml/gateway.yaml --namespace=api-gateway

PODNAME=$(kgpo --namespace=api-gateway --selector=app=gateway -o jsonpath='{ .items[0].metadata.name }')
echo $PODNAME

kubectl logs $PODNAME --namespace=api-gateway

kubectl port-forward --namespace=api-gateway service/gateway 8080:80 8081:443

artillery run -k yaml/artillery.rate-limit.yaml
