# Nginx and cert-manager setup

## Setup

Bare metal setup of nginx-ingress-controller and cert manager

```bash
helm dependency update
helm upgrade --install cert-manager . \
    --create-namespace --namespace cert-manager
```

## Useful resources
- [cert-manager.io docs](https://cert-manager.io/docs/tutorials/acme/nginx-ingress/)
- [cert-manager.io helm](https://cert-manager.io/docs/installation/helm/#installing-with-helm)
