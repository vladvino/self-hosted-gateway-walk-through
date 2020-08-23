# Demonstrate rolling upgrade

- 👉VSC
  - 🖱run command to fetch local IP addresses mapped to gateway service
    - ❗️K8s port forwarding stops working after rolling upgrade - have to use Minikube feature
  - 🖱copy the second IP address (HTTPS)
  - 🖥artillery restart yaml
    - Update artillery restart yaml with the copied IP address
      - ❗️change scheme to `https`
  - 🖱run artillery with artillery restart yaml
    - 📢Total number of requests match what's in the artillery restart yaml
  - 🖱open a new terminal
  - 🖱switch to the previous terminal
  - 🖱run artillery with artillery restart yaml
  - 🖱switch to new terminal
  - 🖱run rolling upgrade command
  - 🖱switch to the previous terminal and wait for artillery command to finish
    - 📢Show that total number of requests is slightly lower than the target due to connection resets

## Legend

- 👉Go
- 🖥Show
- 📢Explain
- ❗️Highlight
- 🖱Click
