# Deploy backend locally

## Deploy httpbin

- 👉VSC
  - 🖱run command to create backend-service namespace
  - 🖥httpbin yaml
    - ❗️ClusterIP service
  - 🖱run command to deploy httpbin into backend-service namespace
  - 🖥created Kubernetes artifacts
  - 📢can create a new API - hard to maintain, or add a policy to route to different backend when on-prem
  - 🖱call GET op from REST-Client
    - ❗️Note the latency - call goes to the cloud api
    - 🖥expected backend URL in the response
  - 🖱add conditional set backend policy to httpbin API after cache policy
    - `<when condition="@(context.Deployment.Region == "Seattle")">`
    - `<set-backend-service base-url="http://httpbin.backend-service" />`
    - ()[http://httpbin.backend-service]
      - 📢for clarity and expediency didn't use named value
  - 🖱call GET op from REST-Client
    - ❗️Note the latency is order of magnitude lower
    - 🖥expected backend URL in the response

## Legend

- 👉Go
- 🖥Show
- 📢Explain
- ❗️Highlight
- 🖱Click
