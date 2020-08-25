# Dapr integration

## Deploy Daprized backend

- 👉VSC
  - 🖥explain Dapr annotations in httpbin-dapr yaml file
  - 🖱run command to apply httpbin-dapr deployment to the api-gateway namespace
    - ❗️At the moment x-namespace discovery is [not supported](https://github.com/dapr/dapr/issues/1708) in Dapr
  - 🖥show Dapr sidecar container in a httpbin-dapr pod

## Daprize the gateway

- 👉VSC
  - 🖱copy Dapr annotations from gateway-dapr yaml file to the gateway.yaml in the root yaml folder
  - 🖱run command to apply gateway deployment to the api-gateway namespace
  - 🖥show Dapr sidecar container in a gateway pod

## Configure service-to-service invocation policy

- 👉VSC
  - 🖱add the following policy to the httpbin API
    - `<set-backend-service backend-id="dapr" dapr-app-id="httpbin-app" dapr-method="@(context.Request.Url.Path)" />`
  - 🖱call *all* ops from REST-Client - 200
  - 🖥bring up trace files to show that requests are sent via Dapr

## Legend

- 👉Go
- 🖥Show
- 📢Explain
- ❗️Highlight
- 🖱Click
