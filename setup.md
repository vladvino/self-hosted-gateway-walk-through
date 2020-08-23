# Setup

## Install the pre-requisites

- An Azure API Management service
  - Self-hosted gateway is [supported](https://aka.ms/apimpricing) in the Developer and Premium tiers

- A Kubernetes cluster
  - I am using a single-node [Minikube](https://minikube.sigs.k8s.io/docs/) cluster

- An HTTP request generator tool
  - For making test requests I am using [REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) extension for Visual Studio Code
  - For sending request barrages I am using [Artillery](https://artillery.io) load testing tool

## Configure the environment

- Reset your Kubernetes cluster
  - Run commands in the `cmd.sh` located in the root
- Reset your API Management service
  - Delete any resources you created - e.g., gateway, cache, API(s), named values
- Clean up the project
  - Delete `gateway yaml` located in the root- Clean up web app
