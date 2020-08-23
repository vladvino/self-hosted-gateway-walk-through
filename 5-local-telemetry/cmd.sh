# gateway -> service -> [ statsd <- prometheus ] <- service <- dashboard

kubectl create namespace telemetry

kubectl apply -f yaml/telemetry.yaml --namespace=telemetry

kubectl apply -f ../yaml/gateway.yaml --namespace=api-gateway

kubectl rollout restart deployment/gateway --namespace=api-gateway

kubectl port-forward --namespace=telemetry service/prometheus 9090:9090

artillery run -k yaml/artillery.telemetry.yaml

http://localhost:9090