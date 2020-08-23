kubectl apply -f ../yaml/gateway.yaml --namespace=api-gateway

PODNAME=$(kgpo --namespace=api-gateway --selector=app=gateway -o jsonpath='{ .items[0].metadata.name }')
echo $PODNAME

kubectl logs $PODNAME --namespace=api-gateway | grep Backup

kubectl exec -it --namespace=api-gateway $PODNAME -- /bin/sh

cd /apim/config

ls -lh

date