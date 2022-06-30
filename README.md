## Simple Minecraft Java Server - Works on OpenShift

### Minecraft
[![Minecraft Builder](https://github.com/ocpdude/minecraft/actions/workflows/minecraft-builder.yaml/badge.svg)](https://github.com/ocpdude/minecraft/actions/workflows/minecraft-builder.yaml)

### Updated 6/30 to Version 1.19
- Builds are not automated with GitHub Actions & Reusable Workflows.
- Packages are deployed to ghcr.io & docker.io

This is simple java server using NodePort service to map ports 30065/tcp to pod/container port 22565/tcp. 

To access it from your local network, use a loadbalancer mapping ingress port 25565/tcp to the worker nodes on port 30065/tcp.

_Additonal items_
1. Forge is added by default to help with loading worlds
2. ConfigMap is used for your server.properties customizations
3. Worlds are extracted on persistant storage and mapped with pvc's

### Bedrock _TBD_
_I will revisit Bedrock very soon_

Bedrock is still Alpha at this time, but it's up and running on OCP 4.x \
Bedrock runs against two IPv4 ports, the primary port is 19132/tcp \
NodePort is mapped to 30132/tcp in the .yaml files.
