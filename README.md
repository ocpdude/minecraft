## Simple Minecraft Java Server - Works on OpenShift

[![Minecraft Builder](https://github.com/ocpdude/minecraft/actions/workflows/minecraft-builder.yaml/badge.svg)](https://github.com/ocpdude/minecraft/actions/workflows/minecraft-builder.yaml) [![Bedrock Builder](https://github.com/ocpdude/minecraft/actions/workflows/bedrock-builder.yaml/badge.svg)](https://github.com/ocpdude/minecraft/actions/workflows/bedrock-builder.yaml) [![Linting Dockerfiles 🐳](https://github.com/ocpdude/minecraft/actions/workflows/dockerfile-lint.yaml/badge.svg)](https://github.com/ocpdude/minecraft/actions/workflows/dockerfile-lint.yaml) [![Linting Kubernetes ☸️](https://github.com/ocpdude/minecraft/actions/workflows/kubernetes-lint.yaml/badge.svg)](https://github.com/ocpdude/minecraft/actions/workflows/kubernetes-lint.yaml)

### Updates on 07/05/23 Minecraft to Version 1.20.1
### Minecraft
This is simple java server using NodePort service to map ports 30065/tcp to pod/container port 22565/tcp. 

To access it from your local network, use a loadbalancer mapping ingress port 25565/tcp to the worker nodes on port 30065/tcp.

* Deployment notes for OpenShift
1. Forge is added in the Dockerfile to help with loading worlds
2. OpenShift manifests are located under ./manifests
3. ConfigMap is used for your server.properties customizations
4. ~~Worlds are extracted on persistant storage and mapped with pvc's~~

_Worlds \
Mapping examples for extracting worlds on persistant storage (NFS, etc) and making those worlds available can be located under ./manifest/example-nfs._

### Bedrock
* Old : Updated /bedrock/Dockerfile version 1.19

Bedrock runs against two IPv4 ports, the primary port is 19132/tcp \
NodePort is mapped to 30132/tcp in the .yaml files.
