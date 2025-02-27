#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <accessKeyId> <accessSecretKey> <account> <region>"
    exit 1
fi

AWS_ACCESS_KEY_ID=$(echo -n "$1" | base64)
AWS_SECRET_KEY=$(echo -n "$2" | base64)
AWS_ACCOUNT=$(echo -n "$3" | base64)
AWS_REGION=$(echo -n "$4" | base64)

helm upgrade --install ecr-repo . \
    --set ecr.accessKeyId="$AWS_ACCESS_KEY_ID" \
    --set ecr.accessSecretKey="$AWS_SECRET_KEY" \
    --set ecr.account="$AWS_ACCOUNT" \
    --set ecr.region="$AWS_REGION"
