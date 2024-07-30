## Simple Minecraft Java Server - Works on OpenShift

[![Linting Dockerfiles 🐳](https://github.com/ocpdude/minecraft/actions/workflows/dockerfile-lint.yaml/badge.svg)](https://github.com/ocpdude/minecraft/actions/workflows/dockerfile-lint.yaml) [![Linting Kubernetes ☸️](https://github.com/ocpdude/minecraft/actions/workflows/kubernetes-lint.yaml/badge.svg)](https://github.com/ocpdude/minecraft/actions/workflows/kubernetes-lint.yaml)

### Minecraft
This is simple java server using NodePort 30065/tcp mapped to pod/container port 22565/tcp. 

## Deployment notes for OpenShift
1. Forge is added in the Dockerfile to help with loading worlds
2. OpenShift manifests are located under ./manifests
3. ConfigMap is used for your server.properties customizations

#### TBD 
1. Loading custom Worlds \
Mapping examples for extracting worlds on persistant storage (NFS, etc)

2. Build and deploy Bedrock \
Bedrock runs against two IPv4 ports, the primary port is 19132/tcp
