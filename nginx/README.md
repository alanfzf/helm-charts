# Nginx and cert-manager setup


```bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm upgrade --install nginx ingress-nginx/ingress-nginx \
    --create-namespace \
    --namespace ingress-nginx \
    --set controller.hostNetwork=true \
    --set controller.service.type=ClusterIP \
    --set dnsPolicy=ClusterFirstWithHostNet
```

```bash
helm repo add jetstack https://charts.jetstack.io
helm repo udpate
helm upgrade --install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace \
    --set startupapicheck.timeout=5m \
    --set installCRDs=true \
    --set global.leaderElection.namespace=cert-manager
```
