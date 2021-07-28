#!/bin/sh
: ${AWS_REGION:=us-east-1}

set -x

export PATH="$PATH:/root/.dotnet/tools"
cd "${DOTNET_LAMBDA_WORKING_DIR:-.}"

dotnet lambda deploy-function \
  --region $AWS_REGION \
  --aws-access-key-id ${{ secrets.AWS_ACCESS_KEY_ID }} \
  --aws-secret-key ${{ secrets.AWS_SECRET_ACCESS_KEY }}
