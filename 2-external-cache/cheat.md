# Configure external cache

## Add caching

- 👉 VSC
  - 🖥artillery cache yaml
  - 🖱run artillery against cloud api
    - ❗️median latency is over 1 sec
  - 🖱add cache policies to the httpbin API in front of rate limit policy
  - 🖱run artillery against cloud api
    - ❗️median latency is in ms
  - 🖱edit artillery cache yaml to use local api
  - 🖱run artillery against local api
    - ❗️median latency is over 1 sec
      - 📢no built cache

## Add local Redis cache

- 👉VSC
  - 🖥redis yaml and explain it
    - ❗️ClusterIP service
  - 🖱run command to deploy redis
- 👉APIM
  - add external cache: "Custom", "Default", `redis:6379`
- 👉VSC
  - 🖱run artillery against local api
    - ❗️median latency is in ms

## Legend

- 👉Go
- 🖥Show
- 📢Explain
- ❗️Highlight
- 🖱Click
