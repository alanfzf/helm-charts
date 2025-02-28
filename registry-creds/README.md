# ECR

```bash
helm upgrade --install ecr-repo . \
    --set ecr.accessKeyId="$AWS_ACCESS_KEY_ID" \
    --set ecr.accessSecretKey="$AWS_SECRET_KEY" \
    --set ecr.account="$AWS_ACCOUNT" \
    --set ecr.region="$AWS_REGION"
```
