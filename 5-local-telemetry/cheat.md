# Emit metrics locally

- 👉VSC
  - 🖥telemetry yaml
    - 📢explain the deployment and services
      - gateway -> ClusterIP -> [ statsd <- prometheus ] <- LoadBalancer <- dashboard
  - 🖥config map yaml
    - 📢explain the settings
  - 🖱copy config map into gateway yaml
  - 🖱run command to update gateway deployment
  - 🖱run command to cycle the deployment
  - 🖱run command to port foreward prometheus
  - 🖱click on the link to open prometheus dashboard
  - 🖱run artillery to simulate load
  - 🖱refresh dashboard
  - 🖱execute Requests query
    - 🖥 Requests metrics graph

## Legend

- 👉Go
- 🖥Show
- 📢Explain
- ❗️Highlight
- 🖱Click
